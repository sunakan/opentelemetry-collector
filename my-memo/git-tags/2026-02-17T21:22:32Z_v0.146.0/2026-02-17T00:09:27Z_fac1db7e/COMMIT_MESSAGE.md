commit fac1db7eb1e44560348b1218173b334ef2936f11
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Mon Feb 16 16:09:27 2026 -0800

    [mdatagen] Require entity association for metrics and events when entities are defined (#14586)
    
    Work towards
    https://github.com/open-telemetry/opentelemetry-collector/issues/14284
    
    This PR enhances metadata.yaml validation to require that every metric
    (in the metrics section, not telemetry) and event (in the events
    section) must be associated with an entity when entities are defined.
    
    This ensures proper entity relationships in components that produce
    entity-associated telemetry. The entity field references an entity type
    defined in the entities section.
    
    For now, no code or documentation is generated, just validation rules:
    - When entities are defined, all metrics and events must have an
    `entity` field
    - The `entity` value must reference a valid entity type from the
    entities section
    - Telemetry metrics are not subject to this requirement
