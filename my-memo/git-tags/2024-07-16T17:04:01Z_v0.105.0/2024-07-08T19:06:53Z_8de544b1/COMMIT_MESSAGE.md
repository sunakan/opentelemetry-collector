commit 8de544b176179a21637baf094b833969786f4479
Author: Kristina Pathak <kristina.m.pathak@gmail.com>
Date:   Mon Jul 8 12:06:53 2024 -0700

    [builder] more information for missing gomod error (#10475)
    
    #### Description
    improving an error message - a missing gomod field would be reported but
    without informing where in the config the field is missing.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #10474
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Unit tests pass, added some tests for missing cases, manually tested
    
    new error looks like:
    ```
    ../../bin/ocb_darwin_amd64 --config=./default.yaml
    2024-06-27T11:39:10.316-0700    INFO    internal/command.go:125 OpenTelemetry Collector Builder {"version": "", "date": "unknown"}
    2024-06-27T11:39:10.319-0700    INFO    internal/command.go:161 Using config file       {"path": "./default.yaml"}
    Error: invalid configuration: receiver module at index 0: missing gomod specification for module; provider module at index 2: missing gomod specification for module
    ```
