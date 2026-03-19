commit dc48d0e66b39dc5a0cd2bac68d964eef70863219
Author: Jacob Aronoff <jaronoff97@users.noreply.github.com>
Date:   Thu Apr 18 16:19:39 2024 -0400

    OTLP HTTP Exporter: Propagate HTTP 429s  (#9905)
    
    Changes otlphttp status code handling to propagate the error code as a
    grpc status code. This follows the logic that was implemented for the
    http receiver
    [here](https://github.com/open-telemetry/opentelemetry-collector/pull/9893/files).
    
    Fixes #9892
    
    **Testing:** local tests were updated, going to test a local build.
