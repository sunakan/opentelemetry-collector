commit e1d0f265591d484e95eae942c0164c9b16046c8e
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Mon Jul 10 13:31:08 2023 -0400

    Fix connector validation based on usage in pipelines (#8004)
    
    Alternate to
    https://github.com/open-telemetry/opentelemetry-collector/pull/8003
    
    Fixes
    #https://github.com/open-telemetry/opentelemetry-collector/issues/7892
    
    Validation of connectors was too aggressive such that a connector that
    was used in any combination of unsupported roles would fail. Instead,
    validation should pass as long as each use of the connector has a
    supported corresponding use.
    
    For example, the forward connector may forward traces and metrics at the
    same time. Previously, validation would fail because it detected that
    traces->metrics and metrics->traces were possible connections. Now it
    will pass as long as there is a supported connection type for each
    pipeline in which the connector is used.
