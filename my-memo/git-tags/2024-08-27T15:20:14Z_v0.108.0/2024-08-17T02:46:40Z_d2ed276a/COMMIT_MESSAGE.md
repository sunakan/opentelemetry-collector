commit d2ed276a9215053790ddead2d6479a6beacd28a7
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Fri Aug 16 19:46:40 2024 -0700

    Enable batch sender in oltpexporter (#10846)
    
    #### Description
    
    This PR adds opt-in support to oltp exporter for the experimental batch
    sender
    (https://github.com/open-telemetry/opentelemetry-collector/issues/8122).
    By default batch sender is not enabled.
    
    Similar:
    *
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/34238
    *
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/32563
    
    #### Link to tracking issue
    
    Resolves
    https://github.com/open-telemetry/opentelemetry-collector/issues/10834
    
    #### Testing
    
    `exporter/otlpexporter/config_test.go`
    
    #### Documentation
    
    Updated the `oltpexporter` README to point to `exporterhelper` README
    for batching.
    
    ---------
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
