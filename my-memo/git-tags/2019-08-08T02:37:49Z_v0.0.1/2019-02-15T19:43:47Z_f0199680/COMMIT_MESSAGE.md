commit f0199680f1aa73707554216a40f0ee1b005ded7c
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Thu Feb 14 18:33:29 2019 -0800

    exporters: enable AWS X-Ray Trace exporter
    
    Added AWS X-Ray as a Trace exporter.
    It shards exporters by service-name that's
    retrieved by each Trace batch's Node.
    
    With this sample configuration YAML file:
    ```yaml
    receivers:
      opencensus:
        address: "localhost:55678"
    
    exporters:
      aws-xray:
        default_service_name: "ocagent"
        version: "latest"
        buffer_size: 200
    ```
    
    and obviously AWS credentials in your environment,
    it will export to AWS X-Ray.
    
    Fixes #241
