commit c9276bae933598526993439debb55766e3558a8c
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Mon Nov 12 02:34:57 2018 -0700

    receiver/jaeger: implement and hookup Jaeger receiver
    
    Jaeger collector running on HTTP and Thrift transports.
    The configuration can be set as:
    ```yaml
    receivers:
      jaeger:
        collector_http_port: 14268
        collector_thrift_port: 14267
    ```
    
    Fixes #153
