commit 227101d6d440e4ae275987eaa828f1ef7c9f8d4c
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Mon May 6 09:48:14 2024 -0600

    [otelcol] rfc for how to log during startup (#10066)
    
    #### Description
    
    This is an RFC to help us decide how we want `otelcol` to provide a
    logger before the primary logger is created. As we discuss I will update
    the doc. Before this is merged we should have decided on a solution and
    the Accepted Solution section must be updated.
    
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/10056
    
    #### Link to tracking issue
    This unblocks:
    - https://github.com/open-telemetry/opentelemetry-collector/issues/9162
    - https://github.com/open-telemetry/opentelemetry-collector/issues/5615
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
