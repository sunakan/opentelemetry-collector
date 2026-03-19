commit 5dea5ae7a4baa4b22305b01e075d81e0300c43c0
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Mon Mar 2 06:52:54 2026 -0800

    [pdata/xpdata] Add new functions for entity API (#14661)
    
    - `NewEntity(t string) Entity`: creates a standalone Entity with the
    given type
    - `Entity.CopyToResource(res pcommon.Resource)`: copies the entity's
    identity and descriptive attributes into a resource's entity refs
    - `EntityAttributeMap.All() iter.Seq2[string, pcommon.Value]`: iterates
    over the attribute key-value pairs belonging to this map's key set
    
    These are needed for the new mdatagen entity-scoped MetricsBuilder API
    in https://github.com/open-telemetry/opentelemetry-collector/pull/14660
