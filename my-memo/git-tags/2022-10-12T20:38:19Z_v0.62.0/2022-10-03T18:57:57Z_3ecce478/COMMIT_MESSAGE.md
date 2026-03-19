commit 3ecce478f47c3b25536f3e0ed63c2677cd9cdbc0
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Oct 3 14:57:57 2022 -0400

    Add service.name resource attribute to the collector's own telemetry (#6152)
    
    Resolves https://github.com/open-telemetry/opentelemetry-collector/issues/6136
    
    - The default service.name is set to BuildInfo.Command (equals to "otelcol" for this repo).
    - The service.name can be overridden by the end user via telemetry config setting.
