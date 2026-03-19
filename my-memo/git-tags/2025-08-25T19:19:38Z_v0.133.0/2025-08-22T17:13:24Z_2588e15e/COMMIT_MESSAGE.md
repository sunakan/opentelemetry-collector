commit 2588e15e44a8c3f521ad53d5a8e08486375b32ff
Author: Vihas Makwana <121151420+VihasMakwana@users.noreply.github.com>
Date:   Fri Aug 22 22:43:24 2025 +0530

    [exporterhelper][batcher] - Fix the bug related to worker pool (#13689)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    While working on an unrelated tasks, I observed unrestricted number of
    `partitionBatcher.flush(..)` being spinned. This resulted in
    `ConsumeLogs` being called excessively.
    If I understand correctly, we're supposed to return the worker to
    `qb.workerPool` only when the `consumeFunc` has returned. Right now,
    we're calling the `consumeFunc` in a background goroutine and returning
    the worker immediately in the main goroutine.
    
    Here's the previous behaviour for comparision:
    https://github.com/open-telemetry/opentelemetry-collector/pull/13164/files#diff-e3328327e734297f98f035f3eb463dc25c06843b82e6d48053020a94df0b9e94L189-L198
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Did manual testing and verified the number of goroutines via profiling.
    
    ---------
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
