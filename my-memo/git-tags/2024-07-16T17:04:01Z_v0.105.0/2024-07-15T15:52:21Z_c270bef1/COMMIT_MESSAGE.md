commit c270bef12f89c7ef7cf4b8efa657b141945403c7
Author: Damien Mathieu <42@dmathieu.com>
Date:   Mon Jul 15 17:52:21 2024 +0200

    Move connector into internal package, in preparation for profiles (#10524)
    
    #### Description
    
    This splits the connector package, so the APIs are in an internal
    package, and redefined publicly for logs/metrics/traces.
    In preparation for adding profiles to the package.
    
    #### Link to tracking issue
    See https://github.com/open-telemetry/opentelemetry-collector/pull/10375
    
    cc @mx-psi
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
