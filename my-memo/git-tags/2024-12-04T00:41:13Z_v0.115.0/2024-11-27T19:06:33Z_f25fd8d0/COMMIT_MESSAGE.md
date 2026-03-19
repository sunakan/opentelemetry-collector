commit f25fd8d0068350cd5f3323ca451c9722ab2f48c4
Author: Jeremy Corley <55004047+ms-jcorley@users.noreply.github.com>
Date:   Wed Nov 27 11:06:33 2024 -0800

    system/telemetry metrics OTLP GRPC Exporter: add CA certificate support (#11633)
    
    #### Description
    Adds support for CA certificates to the OTLP gRPC exporter for metrics
    in system/telemetry.
    Currently if a "Certificate" is specified in the config, it is silently
    ignored.
    
    #### Testing
    Both a positive and negative unit test was added.
    The good test CA certificate was copied from another unit test.
    I'm going to file an issue for updating all test certificates as all the
    ones I checked seem to expire in 2032 which is only 8 years away.
    
    #### Documentation
    None.
