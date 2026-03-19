commit 4f365892b7512c5972d5dd61460bf96d81d9936e
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed May 22 11:21:34 2024 -0700

    Update validate command to use the new configuration options (#10203)
    
    After
    https://github.com/open-telemetry/opentelemetry-collector/pull/9516, the
    `validate` sum-command works differently from the root command.
    
    If a downstream distribution provides `URIs` as part of the new
    `ConfigProviderSettings` without `--config` flag, the `validate` command
    fails with
    ```
    2024/05/21 15:53:25 main.go:85: application run finished with error: at least one config flag must be provided
    ```
