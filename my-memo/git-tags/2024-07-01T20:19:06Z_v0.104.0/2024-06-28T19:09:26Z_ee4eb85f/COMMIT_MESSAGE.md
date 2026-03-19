commit ee4eb85f58e9ed6765eb7a5296308408318af671
Author: Hajime Terasawa <terako.studio@gmail.com>
Date:   Sat Jun 29 04:09:26 2024 +0900

    [service] fix: use ipv6-aware host and port concatenation function (#10343)
    
    #### Description
    Fixing the bug: the latest version of otel-collector failed to start
    with ipv6 metrics endpoint service telemetry.
    
    This problem began to occur after
    https://github.com/open-telemetry/opentelemetry-collector/pull/9037 with
    the feature gate flag enabled was merged. This problem is probably an
    implementation omission because the enabled codepath, which was
    originally added by
    https://github.com/open-telemetry/opentelemetry-collector/pull/7871, is
    marked as WIP.
    
    You can reproduce the issue with the config and the environment variable
    (`MY_POD_IP=::1`).
    ```yaml
    service:
      telemetry:
        logs:
          encoding: json
        metrics:
          address: '[${env:MY_POD_IP}]:8888'
    ```
    
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10011
    
    ---------
    
    Co-authored-by: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
