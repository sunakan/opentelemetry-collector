commit 6b57a75ad4ed45bb5ae2019a7c78989b8cfa72f6
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri Aug 30 08:42:47 2024 -0600

    [component] Remove incorrect comment on Factory interface (#11017)
    
    #### Description
    Removes an incorrect comment from the `component.Factory interface`.
    
    This comment was added via
    https://github.com/open-telemetry/opentelemetry-collector/pull/4338 when
    the extension/receiver/processor/exporter factory types all still [lived
    in](https://github.com/mx-psi/opentelemetry-collector/blob/b4be13e74923ebefb521f69a97288ce8d6f51ea9/component/exporter.go#L61)
    `component`. Since the factories have been moved to other modules,
    `component.Factory` needs to be implementable.
    
    The specific extension/receiver/processor/exporter factory types are
    unimplementable since they are defined in internal packages.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/6506
