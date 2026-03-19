commit b5a97a1aad6715abf1259776cf2c6ddf446e0ea0
Author: Curtis Robert <crobert@splunk.com>
Date:   Tue Sep 3 21:32:06 2024 -0700

    [chore][mdatagen] Add note about the supported types of telemetry metric attributes (#10997)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    The context can be found
    [here.](https://github.com/open-telemetry/opentelemetry-collector/issues/10801#issuecomment-2313541198)
    Only a subset of attribute types are supported for `telemetry` metrics
    vs. regular `metrics`. There's no instrumentation equivalent for
    attributes of the type `bytes`, `slice`, and `map`.
