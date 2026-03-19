commit a51f29244a43ff4550d83143f4556b46571a58df
Author: sonalgaud12 <82362774+sonalgaud12@users.noreply.github.com>
Date:   Thu Jan 23 17:59:04 2025 +0530

    Add changelog for confighttp ErrorLog update (#12172)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Added Zap as the default error logger in `confighttp.ToServer()` to
    ensure consistency in logging and to prevent errors from being printed
    using a different logger. This change configures the `ErrorLog` field of
    the `http.Server` to use a logger backed by Zap, which is initialized
    with the provided logger in `TelemetrySettings`. If the logger creation
    fails, the function now returns `nil, err` to prevent any undefined
    behavior from occurring due to an incomplete setup of the logger.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #11820
    
    
    <!--Describe the documentation added.-->
    #### Documentation
    Updated the changelog with information regarding the new default error
    logger for `confighttp`. Added details to internal documentation to
    reflect the change and ensure proper usage of the new logging system in
    server configuration.
