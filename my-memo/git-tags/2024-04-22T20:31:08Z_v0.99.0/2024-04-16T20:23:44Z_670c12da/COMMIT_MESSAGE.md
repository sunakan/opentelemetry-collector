commit 670c12daeb09208138bde5a4680564132d903c93
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Apr 16 13:23:44 2024 -0700

    Distribute internal metrics across different levels (#9767)
    
    **Description:**
    
    This change distributes the reported internal metrics across available
    levels and updates the level set by default:
    
    1. The default level is changed from `basic` to `normal`, which can be
    overridden with `service::telmetry::metrics::level` configuration.
    
    2. The following batch processor metrics are updated to be reported
    starting from `normal` level instead of `basic` level:
      - `processor_batch_batch_send_size`
      - `processor_batch_metadata_cardinality`
      - `processor_batch_timeout_trigger_send`
      - `processor_batch_size_trigger_send`
    
    3. The following GRPC/HTTP server and client metrics are updated to be
    reported starting from `detailed` level:
      - `http.client.*` metrics
      - `http.server.*` metrics
      - `rpc.server.*` metrics
      - `rpc.client.*` metrics
    
    **Link to tracking Issue:**
    https://github.com/open-telemetry/opentelemetry-collector/issues/7890
