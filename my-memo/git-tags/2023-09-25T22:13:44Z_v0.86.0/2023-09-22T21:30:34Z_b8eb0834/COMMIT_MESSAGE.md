commit b8eb08342e0b18bd5f19b9b2c502797ec0317c5f
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Fri Sep 22 15:30:34 2023 -0600

    List valid feature gates when failing to load invalid gate (#8505)
    
    I found myself troubleshooting an issue with a feature gate not being
    accepted and found this to be helpful.
    
    Usage:
    
    ```
    ./bin/otelcorecol --feature-gates=fake
    Error: invalid argument "fake" for "--feature-gates" flag: no such feature gate "fake". valid gates: [confmap.expandEnabled telemetry.disableHighCardinalityMetrics telemetry.useOtelForInternalMetrics telemetry.useOtelWithSDKConfigurationForInternalTelemetry]
    ```
