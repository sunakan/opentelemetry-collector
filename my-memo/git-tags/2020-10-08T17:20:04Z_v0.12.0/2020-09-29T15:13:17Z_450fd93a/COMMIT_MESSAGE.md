commit 450fd93a6e597d6bf1c0abc871a027d6f26b117b
Author: Pavol Loffay <ploffay@redhat.com>
Date:   Tue Sep 29 17:13:17 2020 +0200

    Support set flag for component configs (#1640)
    
    Signed-off-by: Pavol Loffay <ploffay@redhat.com>
    
    This patch adds support for configuring components (receivers, processors, exporters...) via `--set` flag. For example `--set=processors.batch.timeout=12s` or `--receivers.otlp.protocols.grpc.endpoint=123456`.
    
    ```
    --set stringArray             Set arbitrary component config property. The flag has a higher precedence over config file. The arrays are overridden. Example --set=processors.batch.timeout=2s
    ```
    
    - Flags have higher precedence than config file
    - The component has to be defined in the config to apply the configuration otherwise the flag is noop e.g. `--set=processor.queued_retry.queue_size=15` is noop if the `queued_retry` is not defined.
    - The named components work e.g. `--set=processors.batch/bar.timeout=3s`
    - The maps are joined with the existing (file) config
    - The arrays are overridden
    - The object arrays are more complicated - with flag it's possible to set only the first entry e.g. `--set=processors.resource.attributes.key=key2`
    
    
    The implementation creates a new viper instance that is initialized with a temporary properties file that contains values passed via set flag. Then the new viper is used to apply changes to an existing configuration (loaded via the main config file).
    
    Resolves #873
    
    Tested locally
    `RUN_CONFIG=config.yaml make run`
    
    ```yaml
    receivers:
        otlp:
            protocols:
                grpc:
    
    exporters:
        logging:
            logLevel: debug
    
    processors:
        batch:
    
    service:
      pipelines:
        traces:
          receivers: [otlp]
          processors: [batch]
          exporters: [logging]
    ```
