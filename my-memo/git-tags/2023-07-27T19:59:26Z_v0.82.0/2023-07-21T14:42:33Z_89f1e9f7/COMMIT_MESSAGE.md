commit 89f1e9f77ac062f3ed48264f5af78dcd522dc505
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Jul 21 07:42:33 2023 -0700

    Add support for OTLP export for internal metrics (#8097)
    
    Internal collector metrics can now be exported via OTLP
    using the otel-go otlpgrpc and otlphttp exporters.
    
    Closes #7641
    
    Follow up to
    https://github.com/open-telemetry/opentelemetry-collector/pull/8113
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
