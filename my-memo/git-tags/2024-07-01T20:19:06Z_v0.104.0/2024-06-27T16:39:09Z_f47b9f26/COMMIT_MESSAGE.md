commit f47b9f263a8392b3dc4423099718001bb689d676
Author: Andrzej Stencel <astencel@sumologic.com>
Date:   Thu Jun 27 18:39:09 2024 +0200

    [exporter/debug] add option `use_internal_logger` (#10227)
    
    #### Description
    
    Adds a new configuration option `use_internal_logger` to the Debug
    exporter, that makes it possible to prevent unwanted side effects of the
    exporter using the collector's internal logger.
    
    #### Link to tracking issue
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10226
    
    #### Testing
    
    Updated unit tests to cover the new config option.
    
    #### Documentation
    
    Added documentation for the feature.
    
    ---------
    
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
