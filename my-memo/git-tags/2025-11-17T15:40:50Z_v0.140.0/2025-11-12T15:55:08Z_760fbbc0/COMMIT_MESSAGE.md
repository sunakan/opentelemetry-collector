commit 760fbbc057c85eb427a17a7608ea143a18b407eb
Author: Andrzej Stencel <andrzej.stencel@elastic.co>
Date:   Wed Nov 12 16:55:08 2025 +0100

    [exporter/debug]: disable sending queue by default (#14151)
    
    #### Description
    
    The recently added
    (https://github.com/open-telemetry/opentelemetry-collector/pull/13791,
    https://github.com/open-telemetry/opentelemetry-collector/pull/14101)
    sending queue functionality in the Debug exporter had a default size of
    1, causing issue described in
    https://github.com/open-telemetry/opentelemetry-collector/issues/14138.
    
    I propose to disable the queue by default in the Debug exporter.
    
    #### Link to tracking issue
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/14138
    
    #### Testing
    
    Updated unit tests.
    
    I would feel better if the queue scenarios where better covered by
    tests. On the other hand, I don't want to have similar queue/batching
    tests duplicated in all exporters.
    
    #### Documentation
    
    Updated documentation to say the sending queue is disabled by default.
