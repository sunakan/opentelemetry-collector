commit a162c7f662cb128f7ff053fdc867ec4f3508cada
Author: Andrew Wilkins <axw@elastic.co>
Date:   Wed Jan 14 19:54:55 2026 +0800

    confighttp: add support for binding unix sockets (#14248)
    
    #### Description
    
    Embed `confignet.AddrConfig` in `confighttp.ServerConfig`, replacing the
    `Endpoint` field. This introduces the "transport" config attribute,
    which can be set to "unix" for binding a Unix domain socket.
    
    #### Link to tracking issue
    
    Fixes #8752
    Fixes #14187
    
    #### Testing
    
    ```bash
    $ ./bin/otelcorecol_linux_amd64 \
        --config examples/local/otel-config.yaml \
        --set receivers::otlp::protocols::http::transport=unix \
        --set receivers::otlp::protocols::http::endpoint=\"@otlphttp\"
    ```
    
    ```bash
    $ curl --abstract-unix-socket otlphttp http://testing.invalid:1234/v1/traces
    405 method not allowed, supported: [POST]
    ```
    
    #### Documentation
    
    Updated README.md
    
    ---------
    
    Co-authored-by: Antoine Toulme <atoulme@splunk.com>
