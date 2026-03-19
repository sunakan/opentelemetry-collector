commit 8862cb18f3df678d73189d40ace8f7514042f69b
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Mon Apr 28 18:54:40 2025 +0200

    Put component-identifying scope attributes for internal metrics back behind feature gate (#12933)
    
    #### Context
    
    PR #12617 introduced logic to inject new instrumentation scope
    attributes in all internal telemetry to identify which Collector
    component it came from. These attributes had already been added to
    internal logs as regular log attributes, and this PR switched them to
    scope attributes for consistency. The new logic was placed behind an
    Alpha stage feature gate, `telemetry.newPipelineTelemetry`.
    
    Unfortunately, the default "off" state of the feature gate disabled the
    injection of component-identifying attributes entirely, which was a
    regression since they had been present in internal logs in previous
    releases. See issue #12870 for an in-depth discussion of this issue.
    
    To correct this, PR #12856 was filed, which stabilized the feature gate,
    making it on by default, with no way to disable it, and removed the
    logic that the feature gate used to toggle. This was thought to be the
    simplest way to mitigate the regression in the "off" state, since we
    planned to stabilize the feature eventually anyways.
    
    Unfortunately, it was found that the "on" state of the feature gate
    causes a different issue: [the Prometheus
    exporter](https://github.com/open-telemetry/opentelemetry-go/tree/main/exporters/prometheus)
    is the default way of exporting the Collector's internal metrics,
    accessible at `collector:8888/metrics`. This exporter does not currently
    have any support for instrumentation scope attributes, meaning that
    metric streams differentiated by said attributes but not by any other
    identifying property will appear as aliases to Prometheus, which causes
    an error. This completely breaks the export of Collector metrics through
    Prometheus under some simple configurations, which is a release blocker.
    
    #### Description
    
    To fix this issue, this PR sets the `telemetry.newPipelineTelemetry`
    feature gate back to "Alpha" (off by default), and reintroduces logic to
    disable the injection of the new instrumentation scope attributes when
    the gate is off, but only in internal metrics. Note that the new logic
    is still used unconditionally for logs and traces, to avoid
    reintroducing the logs issue (#12870).
    
    This should avoid breaking the Collector in its default configuration
    while we try to get a fix in the Prometheus exporter.
    
    #### Link to tracking issue
    No tracking issue currently, will probably file one later.
    
    #### Testing
    
    I performed some simple manual testing with a config file like the
    following:
    
    ```yaml
    receivers:
      otlp: [...]
    processors:
      batch:
    exporters:
      debug: [...]
    service:
      pipelines:
        logs:
          receivers: [otlp]
          processors: [batch]
          exporters: [debug]
        traces:
          receivers: [otlp]
          processors: [batch]
          exporters: [debug]
      telemetry:
        metrics:
          level: detailed
        traces: [...]
        logs: [...]
    ```
    
    The two batch processors create aliased metric streams, which are only
    differentiated by the new component attributes. I checked that:
    1. this config causes an error in the Prometheus exporter on main;
    2. the error is resolved by default after applying this PR;
    3. the error reappears when enabling the feature gate (this is expected)
    4. scope attributes are added on the traces and logs no matter the state
    of the gate.
