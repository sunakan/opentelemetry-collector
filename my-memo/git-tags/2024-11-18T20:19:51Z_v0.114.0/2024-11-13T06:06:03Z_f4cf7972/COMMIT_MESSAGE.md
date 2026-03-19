commit f4cf797288125487af1584ddee77bd4c2f7bb1b2
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Tue Nov 12 22:06:03 2024 -0800

    [exporter][chore] Exporter queue batcher flushes current batch on shutdown  (#11666)
    
    #### Description
    
    This PR changes exporter queue batcher to flush the current batch on
    shutdown.
    
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
