commit f0c8787d2ba8a26b489e657c9d7016daa01ba677
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Thu Jun 6 08:03:40 2024 -0700

    [exporter] deprecate CreateSettings -> Settings (#10335)
    
    This deprecates CreateSettings in favour of Settings.
    NewNopCreateSettings is also being deprecated in favour of
    NewNopSettings
    
    Part of #9428
    
    ~Follows
    https://github.com/open-telemetry/opentelemetry-collector/pull/10333~
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
