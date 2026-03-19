commit 4100298c4d1e375ec9800c2ef03d7a3e6f940019
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Nov 22 00:36:58 2023 -0800

    [chore] Fix flaky test TestPersistentQueue_FullCapacity (#8980)
    
    Another fix for the flaky test `TestPersistentQueue_FullCapacity`. We
    need to make sure that the first item is consumed from the queue before
    proceeding. Otherwise, it can occasionally fail with:
    
    ```
    --- FAIL: TestPersistentQueue_FullCapacity (0.00s)
        persistent_queue_test.go:91:
                    Error Trace:    /home/runner/work/opentelemetry-collector/opentelemetry-collector/exporter/exporterhelper/internal/persistent_queue_test.go:91
                    Error:          Received unexpected error:
                                    sending queue is full
                    Test:           TestPersistentQueue_FullCapacity
    FAIL
    ```
