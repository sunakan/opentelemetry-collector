commit f0014435b154f5a3f31dd48ceee0defc3fa81893
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Wed Feb 12 10:21:00 2025 +0100

    [receiver/otlp, exporter/otlp] Use NewDefaultConfig (#12355)
    
    #### Description
    
    According to [the coding
    guidelines](https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/coding-guidelines.md#default-configuration),
    config structs should be initialized using the corresponding
    `NewDefaultX` function, and fields overwritten as necessary. This PR
    makes sure that the OTLP receiver and gRPC OTLP exporter follow this
    guideline.
    
    Implemented naively, this would be a breaking change, as there are
    multiple default values provided by these functions that behave
    differently from the zero value. Notably,
    `confighttp.NewDefaultServerConfig` creates an HTTPS server which
    rejects insecure connections, whereas the current default
    (`ServerConfig.TLSSetting: nil`) accepts them.
    
    I think deciding whether `confighttp` and `configgrpc`'s defaults are
    appropriate for these two components' defaults is out of the scope of
    this PR, so for now, I overwrote the updated fields back to their
    previous defaults. (The default CORS, Keepalive, and ResponseHeaders
    values behave the same as setting them to nil.)
