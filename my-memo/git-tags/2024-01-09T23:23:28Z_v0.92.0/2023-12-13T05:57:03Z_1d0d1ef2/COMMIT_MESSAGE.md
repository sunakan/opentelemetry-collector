commit 1d0d1ef21baebfcc9ed1d67f0237437ceb9a0049
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Dec 12 21:57:03 2023 -0800

    [chore] [exporterhelper] Remove redundant flaky test (#9097)
    
    The test checks the behavior that is not available for the user. Zero
    queue size is not allowed.
    
    With the given input, the test is running in a race condition and fails
    when `Offer` is called before `Consume`.
    
    ```
    --- FAIL: TestZeroSizeWithConsumers (0.00s)
        bounded_memory_queue_test.go:242:
                    Error Trace:    /home/runner/work/opentelemetry-collector/opentelemetry-collector/exporter/exporterhelper/internal/bounded_memory_queue_test.go:242
                    Error:          Received unexpected error:
                                    sending queue is full
                    Test:           TestZeroSizeWithConsumers
    FAIL
    ```
    
    A recent example:
    https://github.com/open-telemetry/opentelemetry-collector/actions/runs/7187787264/job/19576154676
