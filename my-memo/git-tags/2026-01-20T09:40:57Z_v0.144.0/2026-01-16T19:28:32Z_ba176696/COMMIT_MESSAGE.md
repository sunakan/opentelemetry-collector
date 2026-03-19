commit ba1766968501d0ca2d0343611650de42bd44797d
Author: Damien Mathieu <42@dmathieu.com>
Date:   Fri Jan 16 20:28:32 2026 +0100

    Deprecate AddScraper and introduce more explicit AddMetricsScraper (#14428)
    
    This is meant to go alongside
    https://github.com/open-telemetry/opentelemetry-collector/pull/14427
    If we will have `AddProfilesScraper`, using `AddMetricsScraper` makes
    more sense than the slightly obscure `AddScraper`.
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
