commit e8cc01583eff5bb70e54f75e1d8d1dc3e9801efa
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Jan 20 12:00:29 2021 -0500

    Fix broken metrics exporting in the example (#2381)
    
    Pusher was missing in the metric controller creation. Due to this no metrics
    were exported at all.
    
    Added pusher similar to this example: https://github.com/open-telemetry/opentelemetry-go/blob/c066f15ed74fec52c4755014bfcf2bdfb8e0e661/example/otel-collector/main.go#L81
    
    Tested with Collector and verified that now metrics are exported.
    
    Also renamed "pusher" to "cont" since it is not a Pusher but a Controller.
