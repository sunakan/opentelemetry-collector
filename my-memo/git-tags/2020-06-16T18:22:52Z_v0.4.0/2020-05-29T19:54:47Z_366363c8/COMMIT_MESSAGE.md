commit 366363c800430f57f59510fcd15d9cd2f083d823
Author: Pavol Loffay <ploffay@redhat.com>
Date:   Fri May 29 21:54:47 2020 +0200

    Expose service's status channel (#1042)
    
    Resolves #1033
    
    We would like to use this in Jaeger `all-in-one` component that combines OTEL collector and Jaeger query in a single executable.
    
    Since the OTEL service listens on multiple terminations signals: `sigterm` and `asyncErrorChannel` we need an aggregated way to notify our service that shutdown is initiated and when it's done.
    
    ```go
            // query runs in a separate goroutine.
            queryServer, tracerCloser := startQuery(v, logger, storageFactory, svc.ReportFatalError)
            for state := range svc.GetStateChannel() {
                    switch state {
                    case service.ClosingDown:
                            queryServer.Close()
                            tracerCloser.Close()
                    case service.Closed:
                            return
                    }
            }
    ```
