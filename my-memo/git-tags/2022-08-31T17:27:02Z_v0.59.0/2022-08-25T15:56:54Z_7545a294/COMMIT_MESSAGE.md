commit 7545a294c9cf5f483e7a0f45034dae2c9bd9d089
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Aug 25 08:56:54 2022 -0700

    Remove unnecessary posflag provider load (#5951)
    
    This is unnecessary because:
    1. It happens before flags are loaded, so will initialize things with default values, which already happens during flags initialization. See flags.StringVar for example.
    2. The load using posflag provider, as defined right now (with current flags name) produce this config:
    ```
    k := map[string]interface{} {
            "config": ""
            "description": "Custom OpenTelemetry Collector distribution"
            "go": ""
            "module": "go.opentelemetry.io/collector/cmd/builder"
            "name": "otelcol-custom otelcol-version:0.58.0"
            "output-path": "/var/folders/5c/5p_3jmvd6qx0rsvmb9j7c_s00000gn/T/otelcol-distribution1155391158"
            "skip-compilation": false
            "version": "1.0.0"
    }
    ```
    As you can see, this will whole be ignored, since all the configs (except the config flag) are sub-configs under "dist" anyway.
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
