commit 9757ead2557ecec51c93dd4acce29cb144e76829
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Tue Jan 21 16:45:07 2025 -0800

    [chore][testonly][exporter] Use new{Logs,Metrics,Traces}Request instead of &{logs,metrics,traces}Request{} (#12152)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    As part of the effort to cache request size to improve merge splitting
    performance
    (See
    https://github.com/open-telemetry/opentelemetry-collector/issues/12137
    and
    https://github.com/open-telemetry/opentelemetry-collector/pull/12136),
    we want to make sure requests are created from create function instead
    of getting initialized via struct directly.
    
    * `newLogsRequest` instead of `&logsRequest{}`
    * `newMetrcsRequest` instead of `&metricsRequest{}`
    * `newTracesRequest` instead of `&tracesRequest{}`
    
    
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    https://github.com/open-telemetry/opentelemetry-collector/issues/12137
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
