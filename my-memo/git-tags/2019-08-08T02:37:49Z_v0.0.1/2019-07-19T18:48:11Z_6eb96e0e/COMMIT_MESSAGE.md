commit 6eb96e0e5d417b2d1bd746c2efeaeb985effac49
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Fri Jul 19 11:48:11 2019 -0700

    Ignore io.EOF on JSON upload in receiver/opencensus/ocmetrics  (#179)
    
    When the grpc-gateway was added to this receiver/opencensus
    Trace receiver in OpenCensus-Service PR
    https://github.com/census-instrumentation/opencensus-service/pull/270,
    we recognized that browsers and other sources that send JSON
    in one burst won't stream so would encounter an io.EOF.
    This PR makes the metrics receiver replicate that behavior.
    
    Fixes #178
