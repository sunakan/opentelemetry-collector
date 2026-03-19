commit bdc532dad3025819cd0cd78a14461ff223d38900
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Thu Aug 19 15:35:29 2021 -0700

    receiver/prometheus: make Config.Validate reject unsupported Prometheus advanced features (#3864)
    
    With this change, we reject advanced Prometheus features that the
    collector won't support. This way users will be cognizant of what isn't
    supported. This way, anyone who adds this configuration to their
    Prometheus receiver section
    
    ```yaml
    receivers:
      prometheus:
        buffer_period: 234
        buffer_count: 45
        use_start_time_metric: true
        start_time_metric_regex: '^(.+_)*process_start_time_seconds$'
        config:
          scrape_configs:
            - job_name: 'demo'
              scrape_interval: 5s
          remote_write:
            - url: "https://example.org/write"
    
          remote_read:
            - url: "https://example.org/read"
    
          rule_files: ["a", "b"]
    
          alerting:
            alert_relabel_configs:
              - separator: ","
                target_label: "fix"
    
              - separator: "|"
                target_label: "gotham"
    
            alertmanagers:
              - scheme: "http"
                path_prefix: "/prefix1"
                timeout: 1s
    ```
    
    will be shown what we don't support these features with this error
    message:
    
    ```shell
    receiver "prometheus" has invalid configuration: unsupported features:
            alert_config.alertmanagers
            alert_config.relabel_configs
            remote_read
            remote_write
            rule_files
    ```
    
    Fixes #3864
    Fixes open-telemetry/wg-prometheus#3
