commit 045488fddebb78b6ddd690700440507e6dfbfa47
Author: Pavol Loffay <p.loffay@gmail.com>
Date:   Wed Apr 30 16:39:27 2025 +0200

    Add trusted platform module (TPM) support to TLS package (#12801)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Add trusted platform module (TPM) support to TLS package.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Resolves
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/38682
    Replaces
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/39059
    
    TPM cannot be implemented as extension
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/38682
    because it overrides the entire `http.transport` and therefore
    invalidates other extensions/authenticators.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    ```yaml
    # make otelcorecol
    # sudo ./bin/otelcorecol_linux_amd64 --config ./examples/local/tpm.yaml
    #
    # CA
    #  openssl genrsa -des3 -out ca.key 2048
    # openssl req -new -x509 -days 1826 -key ca.key -out ca.crt -subj "/C=US/ST=CA/L=Santa Clara/O=Edge/OU=Edge/CN=localhost" -addext "subjectAltName=DNS:localhost,IP:127.0.0.1"
    #
    # client
    # sudo tpm2tss-genkey -a rsa -s 2048 edge-cert.key
    # sudo openssl req -new -provider tpm2  -key edge-cert.key -out edge-cert.csr -subj "/C=US/ST=CA/L=Santa Clara/O=Edge/OU=Edge/CN=localhost" -addext "subjectAltName=DNS:localhost,IP:127.0.0.1"
    # openssl x509 -req -in edge-cert.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out edge-cert.crt -days 1826 -copy_extensions copyall
    #
    # server
    # openssl genrsa -out server.key 2048
    # openssl req -new -key server.key -out server.csr  -subj "/C=US/ST=CA/L=Santa Clara/O=Edge/OU=Edge/CN=localhost" -addext "subjectAltName=DNS:localhost,IP:127.0.0.1"
    # openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 360 -copy_extensions copyall
    receivers:
      otlp:
        protocols:
          grpc:
            endpoint: localhost:4317
          http:
            endpoint: localhost:4318
      otlp/server:
        protocols:
          grpc:
            endpoint: localhost:4319
            tls:
              client_ca_file: ca.crt
              cert_file: server.crt
              key_file: server.key
    exporters:
      otlp:
        endpoint: https://localhost:4319
        tls:
          key_file: edge-cert.key
          cert_file: edge-cert.crt
          ca_file: ca.crt
          tpm:
            enabled: true
            path: /dev/tpmrm0
      debug:
        verbosity: normal
    service:
      telemetry:
        metrics:
          address: localhost:8889
      pipelines:
        metrics/client:
          receivers: [otlp]
          exporters: [otlp]
        metrics/server:
          receivers: [otlp/server]
          exporters: [debug]
    ```
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    Signed-off-by: Pavol Loffay <p.loffay@gmail.com>
