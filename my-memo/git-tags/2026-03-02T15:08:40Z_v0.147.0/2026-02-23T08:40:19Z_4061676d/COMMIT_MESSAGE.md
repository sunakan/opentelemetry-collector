commit 4061676d3e3269a606584039417db84f94e0bce0
Author: Aditya kuchekar <adityakuchekar0077@gmail.com>
Date:   Mon Feb 23 14:10:19 2026 +0530

    fix(queuebatch): prevent timer data race in partition_batcher (#14491)
    
    ## **How I Found the Issue**
    
    While reviewing `partition_batcher.go`, I noticed that `resetTimer()` is
    called from multiple goroutines, but not always under the same mutex.
    In `flushCurrentBatchIfNecessary()`, the lock was released before
    calling `resetTimer()`, while `Consume()` calls it while holding the
    lock. Since `time.Timer.Reset()` is not concurrency-safe, this looked
    like a potential race condition in high-throughput pipelines.
    
    ## **What Was the Issue**
    
    `flushCurrentBatchIfNecessary()` unlocked `currentBatchMu` and then
    called `resetTimer()`. At the same time, `Consume()` could call
    `resetTimer()` under the lock.
    This means two goroutines could call `qb.timer.Reset()` concurrently,
    which is undefined behavior in Go and can lead to missed flushes,
    duplicate flushes, or stuck batches (data not exported).
    
    ## **Main Code Change**
    
    I moved `resetTimer()` inside the critical section so all timer
    operations are consistently protected by the same mutex.
    
    ```go
    qb.currentBatch = nil
    qb.resetTimer()  // now inside the lock
    qb.currentBatchMu.Unlock()
    
    qb.flush(batchToFlush.ctx, batchToFlush.req, batchToFlush.done)
    ```
    
    ## **How I Verified the Fix**
    
    * Ran all exporterhelper and queuebatch tests (all passed)
    * Checked all `resetTimer()` call sites to confirm they are now under
    `currentBatchMu`
    * Verified `flush()` still runs outside the lock to avoid blocking
    producers
    * Reasoned through concurrent timer + producer scenarios to confirm the
    race is eliminated
