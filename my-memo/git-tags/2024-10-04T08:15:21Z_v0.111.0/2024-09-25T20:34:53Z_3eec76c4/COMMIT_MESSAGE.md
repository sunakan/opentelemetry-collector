commit 3eec76c4a37d8715f1844f19d8219fbb8ab56cc5
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Sep 25 13:34:53 2024 -0700

    Deprecate service::telemetry::metrics::address (#11205)
    
    Existing configs like:
    
    ```yaml
    service:
      telemetry:
        metrics:
          level: "basic"
          address: "localhost:8888"
    ```
    
    Should change to:
    
    ```yaml
    service:
      telemetry:
        metrics:
          level: "basic"
          readers:
            - pull:
                exporter:
                  prometheus:
                    host: "localhost"
                    port: 8888
    ```
    
    ---------
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
