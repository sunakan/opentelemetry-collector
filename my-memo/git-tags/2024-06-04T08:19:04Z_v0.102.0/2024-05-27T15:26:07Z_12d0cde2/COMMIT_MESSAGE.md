commit 12d0cde26393013fcd94372a99f8ef04fdedbea4
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Mon May 27 17:26:07 2024 +0200

    [chore] fix schema for telemetry/metrics/<metric-name> (#10224)
    
    Apparently there's an error on the schema for the telemetry node:
    looking at a working example, I see this:
    
    ```
    telemetry:
      metrics:
        processor_tail_sampling_sampling_decision_latency:
          description: Latency (in microseconds) of a given sampling policy
          unit: µs
          enabled: true
          histogram:
            value_type: int
    ```
    
    However, the current schema seems to indicate that the `metrics` node
    shouldn't be there. This PR brings the schema to be in-line with the
    code.
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
