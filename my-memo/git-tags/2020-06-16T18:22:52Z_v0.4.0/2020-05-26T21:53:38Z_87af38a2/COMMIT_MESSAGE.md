commit 87af38a2467650e2e96b0f393fb69b974d467d62
Author: kirbyquerby <kirbyquerby@users.noreply.github.com>
Date:   Tue May 26 16:53:38 2020 -0500

    Implement OTLP/HTTP X-Protobuf Receiver (#1021)
    
    This change adds application/x-protobuf support to the existing
    grpc-gateway mux in the OTLP receiver.
    
    See: https://github.com/open-telemetry/oteps/blob/master/text/0099-otlp-http.md
    
    What currently works:
    * The receiver will correctly process HTTP requests with the
      Content-Type application/x-protobuf.
    * The receiver will respond with Content-Type application/x-protobuf.
    * The receiver will respond with status code HTTP 200 OK on success.
    
    What doesn't work yet:
    * The receiver cannot handle gzip-encoded requests (Content-Encoding
      gzip).
    * The receiver will not gzip-encode responses to requests with
      Accept-Encoding: gzip.
    
    Updates #881
