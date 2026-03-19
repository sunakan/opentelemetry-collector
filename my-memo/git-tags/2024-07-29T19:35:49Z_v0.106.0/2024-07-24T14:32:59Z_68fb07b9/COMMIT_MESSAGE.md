commit 68fb07b953262857d41e107a542d8b1038ad859a
Author: Curtis Robert <crobert@splunk.com>
Date:   Wed Jul 24 07:32:59 2024 -0700

    [exporterhelper] Update metric units (#10655)
    
    #### Description
    Updated the metric units for metrics in the `exporterhelper`. As
    described in the issue, `1` isn't an informative unit to use, so this
    should hopefully clarify metrics for users.
    
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10648
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
