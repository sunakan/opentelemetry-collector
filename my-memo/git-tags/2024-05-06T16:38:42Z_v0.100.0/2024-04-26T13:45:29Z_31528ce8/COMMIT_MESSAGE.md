commit 31528ce81d44e9265e1a3bbbd27dc86d09ba1354
Author: David Ashpole <dashpole@google.com>
Date:   Fri Apr 26 09:45:29 2024 -0400

    Support parsing metric.metadata from OTLP JSON (#10026)
    
    Follow-up to
    https://github.com/open-telemetry/opentelemetry-collector/pull/10006,
    which added metric.metadata to pmetric.
    
    I forgot to add support for parsing the field from JSON in that PR. This
    PR adds the missing support.
    
    #### Testing
    
    Unit tests
