commit 8cc29543f1379ea04a19da767ec49e49c28fceab
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Wed Jun 18 11:16:58 2025 -0700

    [exporterhelper] Preserve client metadata in the persistent queue (#13220)
    
    Preserve client metadata key values in persistent queue.
    
    It allows request client metadata to propagate through the persistent
    queue used by the exporters. The same way as it's done for the in-memory
    queue. Currently, it is behind the exporter.PersistRequestContext
    feature gate, which can be enabled by adding
    `--feature-gates=exporter.PersistRequestContext` to the collector
    command line. An exporter buffer stored by a previous version of the
    collector (or by a collector with the feature gate disabled) can be read
    by a newer collector with the feature enabled. However, the reverse is
    not supported: a buffer stored by a newer collector with the feature
    enabled cannot be read by an older collector (or by a collector with the
    feature gate disabled).
    
    Resolves
    https://github.com/open-telemetry/opentelemetry-collector/issues/10110,
    https://github.com/open-telemetry/opentelemetry-collector/issues/11780
    and
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/38666
    
    Follow-up work:
    
    To fully propagate the client context, we also add support for
    serializing remaining `client.Client` fields:
    ```
            Addr net.Addr
            Auth AuthData
    ```
    
    Then, we probably want to make this configurable or rely on the
    transform processor to be able to manipulate the context
