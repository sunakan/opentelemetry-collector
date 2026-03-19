commit 1703ce6df6979d84720b5826c97d579cf11a59bb
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Sun Nov 10 21:43:28 2024 -0800

    [exporter][chore] Change queue batcher to use exportFunc instead of request.export() (#11636)
    
    #### Description
    
    This PR changes queue batcher to use `exportFunc` instead of
    `request.export()`. This makes testing easier and avoid passing
    unnecessary detail to the exporter batcher.
    
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
