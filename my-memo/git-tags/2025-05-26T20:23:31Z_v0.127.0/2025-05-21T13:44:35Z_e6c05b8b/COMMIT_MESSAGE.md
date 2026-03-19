commit e6c05b8bab729ecd247dabb9f32205ad91811d93
Author: Andrzej Stencel <andrzej.stencel@elastic.co>
Date:   Wed May 21 15:44:35 2025 +0200

    [exporter/debug] display resource and scope in `normal` verbosity (#13011)
    
    #### Description
    
    Adds displaying of resource and scope details in `normal` verbosity.
    
    Each resource is represented with one line showing the resource's
    details:
    - schema URL
    - resource attributes
    
    which looks like `ResourceTraces #0 [resource-schema-url]
    resource_attr1=value1 attr2=value2`.
    
    Each instrumentation scope is represented by one line showing the
    scope's details:
    - scope name
    - scope version
    - scope schema URL
    - scope attributes
    
    which looks like `ScopeTraces #0 scope-name@scope-version
    [scope-schema-url] scope_attr1=value1 attr2=value2`.
    
    Before:
    
    ```console
    2025-05-09T19:57:16.332+0200    info    Traces  {"resource": {}, "otelcol.component.id": "debug/normal", "otelcol.component.kind": "exporter", "otelcol.signal": "traces", "resource spans": 1, "spans": 2}
    2025-05-09T19:57:16.332+0200    info    okey-dokey-0 ab1030bd4ee554af936542b01d7b4807 1d8c93663d043aa8 net.sock.peer.addr=1.2.3.4 peer.service=telemetrygen-client
    lets-go ab1030bd4ee554af936542b01d7b4807 0d238e8a2f97733f net.sock.peer.addr=1.2.3.4 peer.service=telemetrygen-server
            {"resource": {}, "otelcol.component.id": "debug/normal", "otelcol.component.kind": "exporter", "otelcol.signal": "traces"}
    ```
    
    After:
    
    ```console
    2025-05-09T19:57:16.332+0200    info    Traces  {"resource": {}, "otelcol.component.id": "debug/normal", "otelcol.component.kind": "exporter", "otelcol.signal": "traces", "resource spans": 1, "spans": 2}
    2025-05-09T19:57:16.332+0200    info    ResourceTraces #0 [https://opentelemetry.io/schemas/1.25.0] service.name=telemetrygen
    ScopeTraces #0 telemetrygen
    okey-dokey-0 ab1030bd4ee554af936542b01d7b4807 1d8c93663d043aa8 net.sock.peer.addr=1.2.3.4 peer.service=telemetrygen-client
    lets-go ab1030bd4ee554af936542b01d7b4807 0d238e8a2f97733f net.sock.peer.addr=1.2.3.4 peer.service=telemetrygen-server
            {"resource": {}, "otelcol.component.id": "debug/normal", "otelcol.component.kind": "exporter", "otelcol.signal": "traces"}
    ```
    
    #### Link to tracking issue
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10515
    
    #### Testing
    
    Updated unit tests.
    
    #### Documentation
    
    Updated example in documentation.
