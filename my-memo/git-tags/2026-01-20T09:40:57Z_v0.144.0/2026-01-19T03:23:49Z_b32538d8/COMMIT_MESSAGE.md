commit b32538d871f0dfd4c1c30783abb47179f14538c5
Author: aditya kuchekar <adityakuchekar0077@gmail.com>
Date:   Mon Jan 19 08:53:49 2026 +0530

    Fix reference count bug in partition batcher (#14444)
    
    ---
    
    ## Summary
    
    This PR fixes an off-by-one error in the partition batcher’s reference
    counting logic that could cause exporter errors to be silently dropped
    under specific error conditions.
    
    When a batch is split into multiple requests and `MergeSplit()` returns
    an error, the reference counter was initialized with an incorrect value
    due to a copy-paste mistake. This could lead to the `done` callback
    firing too early, before all flush operations completed.
    
    ---
    
    ## Problem Description
    
    In `Consume`, the number of references (`numRefs`) is intentionally
    incremented when `mergeSplitErr` is non-nil to account for the
    additional error callback. However, the reference counter was
    initialized using `len(reqList)` instead of `numRefs`.
    
    As a result, the reference count could be lower than the actual number
    of callbacks that would be invoked.
    
    ### Buggy behavior (simplified)
    
    ```go
    numRefs := len(reqList)
    if mergeSplitErr != nil {
        numRefs++
    }
    
    done = newRefCountDone(done, int64(len(reqList))) // incorrect
    ```
    
    This mismatch causes the underlying `done` callback to be triggered
    prematurely.
    
    ---
    
    ## Impact
    
    ### Before this fix
    
    * Exporter errors from final flush operations could be silently lost
    * `done` could be invoked before all export operations completed
    * Error aggregation reported back to callers could be incomplete
    * In queue-based exporters using `waitForResult`, callers could observe
    success even when exports failed
    * Silent data loss in production telemetry pipelines was possible
    
    ### After this fix
    
    * All flush operations are correctly tracked
    * Errors from all callbacks are properly aggregated
    * `done` is invoked only after all operations complete
    * Completion signaling is consistent and reliable
    
    ---
    
    ## Steps to Reproduce
    
    This issue occurs when **all** of the following conditions are met:
    
    1. A batch is split into multiple requests (`len(reqList) >= 2`)
    2. `MergeSplit()` returns a non-nil error
    3. The partition batcher initializes the reference counter
    
    In this case, the extra error callback increases the true number of
    references, but the counter was initialized with a lower value, causing
    premature completion.
    
    This is an edge case and does not crash or panic, which makes it
    difficult to detect without careful inspection or targeted testing.
    
    ---
    
    ## Fix
    
    The fix ensures the reference counter is initialized with the correct
    number of references (`numRefs`) so that all callbacks are properly
    accounted for.
    
    ### Correct behavior
    
    ```go
    numRefs := len(reqList)
    if mergeSplitErr != nil {
        numRefs++
    }
    
    done = newRefCountDone(done, int64(numRefs)) // correct
    ```
    
    This aligns the logic with the already-correct implementation used
    earlier in the same file and restores correct lifecycle handling.
    
    ---
    
    ## Why This Is Important
    
    This bug is particularly hard to detect because:
    
    * No crash or panic occurs
    * The failure mode is silent
    * Most exports still succeed
    * The issue only affects specific edge cases involving split batches and
    merge errors
    
    However, when it does occur, it can lead to silent telemetry data loss
    and misleading success signals in production systems.
    
    ---
    
    ---------
    
    Signed-off-by: aditya4044656 <adityakuchekar0077@gmail.com>
