commit 886e62f4c10f528bf012637ed27ab89a8567d835
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Jul 2 22:27:41 2019 -0400

    Implement Prometheus factory and config V2 (#89)
    
    Github issue: https://github.com/open-telemetry/opentelemetry-service/issues/38
    
    Testing done:
    
    - make && make otelsvc
    - Run otelsvc with the following config and make sure Prometheus can scrape :
    
    receivers:
      opencensus:
        port: 55678
    
      prometheus:
        config:
          scrape_configs:
            - job_name: 'demo'
              scrape_interval: 5s
    
    zpages:
      port: 55679
    
    exporters:
      prometheus:
        endpoint: "127.0.0.1:8889"
    
    pipelines:
      metrics:
        receivers: [prometheus]
        exporters: [prometheus]
