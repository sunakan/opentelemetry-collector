commit 4ae42995bb7b7ef1cb21afe78ed92635ed132e2c
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Sat Feb 2 23:55:53 2019 -0700

    receiver: implemented Prometheus receiver
    
    This Prometheus receiver requires adding yaml
    definitions to the configuration file under "receivers"
    
    ```yaml
    receivers:
       prometheus:
         - job_name: 'ocjdbc'
            scrape_interval: 5s
            static_configs:
              - targets: ['localhost:9988']
    
         - job_name: 'kafka_metrics'
             scrape_interval: 4s
             static_configs:
               - targets: ['localhost:8887']
    
         buffer_period: 500ms
         buffer_count: 2
    ```
    
    Also added and end-to-end test to ensure that a full scrape by the
    receiver produces tangible metrics that are then consumed
    by the agent or whatever metrics sinks exist.
    
    Fixes #137
