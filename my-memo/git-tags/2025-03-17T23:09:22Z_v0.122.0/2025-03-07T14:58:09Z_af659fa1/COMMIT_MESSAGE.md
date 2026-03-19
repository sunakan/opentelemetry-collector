commit af659fa1de91b14a645298de1a53eb66b4af3d99
Author: Roger Coll <roger.coll@elastic.co>
Date:   Fri Mar 7 15:58:09 2025 +0100

    [service] Include component id/type in start error (#11837)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Wraps the component ID and type into the component's start retuned
    error. If `telemetry::logs::level` is < error (e.g fatal), the service
    error message does not give information about which pipeline component
    failed:
    
    Current error message:
    ```
     $ otelcontribcol --config config.yaml
    Error: cannot start pipelines: start function error
    2024/12/10 10:07:25 collector server run finished with error: cannot start pipelines: start function error
    ```
    
     With these changes:
    
     ```
     $ otelcontribcol --config config.yaml
    Error: cannot start pipelines: failed to start geoip processor: start
    function error
    2024/12/10 09:58:29 collector server run finished with error: cannot
    start pipelines: failed to start geoip processor: start function error
    ```
    
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/10426
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
