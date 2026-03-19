commit 9b5a4abfc1da1f0bf1280d38e483691f6409bef7
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Sat Feb 16 23:23:37 2019 -0800

    cmd: occollector, ocagent: add TLS for OpenCensus receiver
    
    With this change, one can now optionally start either the
    occollector or ocagent with TLS credentials pointing to a
    certificate file and a key file in the form of:
    
    ```yaml
    receivers:
      opencensus:
        tls_credentials:
          cert_file: "cert.pem"
          key_file: "key.pem"
    ```
    
    Despite the code changes for starting the receiver always passing
    in `tlsCredsOption`, if no TLS Configuration is parsed, the
    OpenCensus receiver Option passed in will be a noop.
    
    Fixes #367
