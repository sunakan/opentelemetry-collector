commit a776048b653ce078356dbee16c4811216f5fca4e
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Jun 1 13:20:59 2020 -0400

    Add LogService and request/response message definitions (#1057)
    
    LogService will be used for OTLP/gRPC. Request/response messages will be
    used for OTLP/gRPC and OTLP/HTTP.
    
    Resolves https://github.com/open-telemetry/opentelemetry-collector/issues/1052
