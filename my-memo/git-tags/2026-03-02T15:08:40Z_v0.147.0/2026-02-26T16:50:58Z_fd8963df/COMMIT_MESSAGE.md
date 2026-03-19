commit fd8963df2ad6d95afdad68b96f3f17db94d5fa6d
Author: Andrew Gizas <andreas.gkizas@elastic.co>
Date:   Thu Feb 26 18:50:58 2026 +0200

    [Exporterhelper Exporter] Enable metadata population in exporterhelper when sending_queue is enabled (#14139)
    
    #### Description
    Feature: The enablement of the sending_queue in the configuration of the
    otplhttp exporter does not preserve the metadata information of the
    initial context.
    
    This pr introduces a new configuration called `metadata_keys` that will
    be used in the exporter config
    
    #### Testing
    
    - Added partionetr_test
    
    - Built my local otlp exporter
    
    Configuration of otlphttp:
    
    ```yaml
    otlphttp:
      endpoint: https://endpoint.invalid/_otlp
      timeout: {{ .http_request_timeout | quote }}
      sending_queue:
        enabled: true
        wait_for_result: false
        block_on_overflow: true  # false = data loss on queue full
        sizer: requests
        queue_size: {{ .queuedRequests }}
        batch:
          partition:
            metadata_keys:
              - project-id
              - tenant-id
    ```
    
    See "ProjectID":"local" that is populated below in my logs
    ```yaml
    {"log.level":"info","@timestamp":"2025-11-06T15:51:49.955Z","message":"ecpRoutingRoundTripper: after URL modification","resource":{"cloud.availability_zone":"local","k8s.namespace.name":"motel-index-collector","k8s.node.name":"hotel-worker2","k8s.pod.name":"motel-index-collector-local-58484b67c8-l4vrt","k8s.pod.uid":"1a8f6fad-91b6-413a-a929-6d004ca489b3","orchestrator.cluster.name":"default","orchestrator.deploymentslice":"","orchestrator.environment":"default","service.instance.id":"ecf43bce-5aac-444c-b244-8871bbf2d69a","service.name":"motel-index-collector","service.version":"git"},"otelcol.component.id":"ecproutingmiddleware","otelcol.component.kind":"extension","final_url_host":"local.es.svc.cluster.local:9200","final_url_scheme":"http","final_url":"[http://local.es.svc.cluster.local:9200/_otlp/v1/metrics","final_host":"","ProjectID":"local","header_count":6,"ecs.version":"1.6.0"}](http://local.es.svc.cluster.local:9200/_otlp/v1/metrics%22,%22final_host%22:%22%22,%22ProjectID%22:%22local%22,%22header_count%22:6,%22ecs.version%22:%221.6.0%22%7D)
    ```
    
    This PR is a feature for exporterhelper, so is not just
    otlphttp-specific.
    
    ---------
    
    Signed-off-by: Andreas Gkizas <andreas.gkizas@elastic.co>
    Co-authored-by: Andrew Wilkins <axwalk@gmail.com>
