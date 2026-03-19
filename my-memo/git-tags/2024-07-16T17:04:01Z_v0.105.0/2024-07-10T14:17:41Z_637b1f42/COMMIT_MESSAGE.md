commit 637b1f42fcb7cbb7ef8a50dcf41d0a089623a8b7
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Jul 10 08:17:41 2024 -0600

    [confmap] Fix bug where expand didn't honor escaping (#10560)
    
    #### Description
    
    When we promoted `confmap.unifyEnvVarExpansion` to beta, we found that
    the new expansion logic in `confmap` wasn't handling escaping of `$$`
    like it is supposed to. This PR fixes that bug, but adding escaping
    logic for `$$`.
    
    @azunna1 this fixes the bug you mentioned in
    https://github.com/open-telemetry/opentelemetry-collector/pull/10435
    around the metricstransformprocessor:
    
    ```yaml
      metricstransform:
        transforms:
          - include: '^k8s\.(.*)\.(.*)$$'
            match_type: regexp
            action: update
            new_name: 'kubernetes.$${1}.$${2}'
          - include: '^container_([0-9A-Za-z]+)_([0-9A-Za-z]+)_.*'
            match_type: regexp
            action: update
            new_name: 'container.$${1}.$${2}'
    ```
    
    #### Testing
    Added new unit tests explicitly for escaping logic
