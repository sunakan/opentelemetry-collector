commit 291aa24bded627342c84e35dc9c17fb16ec1d538
Author: Hajime Terasawa <terako.studio@gmail.com>
Date:   Thu Aug 8 23:50:14 2024 +0900

    [cmd/builder] clarify mismatched versions in the warning message (#10767)
    
    #### Description
    
    Refine the warning message to make it useful for the end user.
    
    #### Link to tracking issue
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10514
    
    #### Testing
    
    Locally tested.
    ```sh
    2024-07-31T22:03:05.984+0900    INFO    internal/command.go:125 OpenTelemetry Collector Builder {"version": "(devel)"}
    2024-07-31T22:03:05.984+0900    INFO    internal/command.go:136 Using default build configuration
    2024-07-31T22:03:05.985+0900    INFO    builder/config.go:142   Using go        {"go-executable": "/usr/local/bin/go"}
    2024-07-31T22:03:05.985+0900    INFO    builder/main.go:77      You're building a distribution with non-aligned version of the builder. The version mismatch may cause the compilation failure. It's recommended to use the same version.       {"collector-version": "0.104.0", "builder-version": "0.106.1"}
    2024-07-31T22:03:05.985+0900    INFO    builder/main.go:100     Sources created {"path": "/tmp/otelcol-distribution3869530617"}
    2024-07-31T22:03:06.510+0900    INFO    builder/main.go:191     Getting go modules
    2024-07-31T22:03:06.552+0900    INFO    builder/main.go:111     Compiling
    2024-07-31T22:03:07.080+0900    INFO    builder/main.go:130     Compiled        {"binary": "/tmp/otelcol-distribution3869530617/otelcorecol"}
    ```
    
    #### Documentation
    
    N/A
    
    #### Note
    
    I did not add a changelog entry because other PRs that only changed
    logging messages and behavior did not add it too.
    If this is an incorrect understanding, please point it out.
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
