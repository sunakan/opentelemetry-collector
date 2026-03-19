commit 0c052ccd753806dc15c501a533a2c033f04f0e4f
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Mon Oct 1 18:05:48 2018 -0700

    cmd/ocagent: retrofitted with new protocol
    
    With this change, cmd/ocagent now adheres
    to the new protocol and currently runs
    the OpenCensus interceptor while exporting
    received spans to the various and previously
    already created YAML configured exporters such as:
    * Stackdriver Tracing
    * DataDog
    * Zipkin
    
    which are statically imported.
    
    Now any program that has an ocagent-exporter
    can send traces to this service. The service's
    OpenCensus Interceptor Port can be configured by
    ```shell
    ocagent -oci-port=<value>
    ```
    which by default is `55678`
    
    After this change we can add both more trace exporters
    and more trace interceptors.
    
    Since the metrics proto and design hasn't yet been
    finalized, let's remove any vestiges of metrics in
    the various exporters for now but can trivially
    add them back whenever we are ready.
    
    Essentially this can be our v0.0.1 of the new trace
    agent/service.
