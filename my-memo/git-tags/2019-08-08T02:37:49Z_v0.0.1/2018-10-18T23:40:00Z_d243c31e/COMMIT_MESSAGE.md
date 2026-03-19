commit d243c31e43b00abe34f8fb49a764dee78370030e
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Thu Oct 18 16:21:11 2018 -0700

    config.yaml: categorize and reorganize YAML file
    
    Categorize namespaces of each item into:
    
    - exporters
    - interceptors
    - zpages
    
    which aesthetically looks nicer than the original but also
    gives users better context and control over what the agent
    does.
    
    For example here is the new configuration file:
    ```yaml
    interceptors:
        opencensus:
            address: "127.0.0.1:55678"
    
    exporters:
        stackdriver:
            project: "project-id"
            enable_tracing: true
    
        zipkin:
            endpoint: "http://localhost:9411/api/v2/spans"
    
        datadog:
            enable_tracing: false
    
    zpages:
        port: 55679
    ```
    
    Fixes #90
