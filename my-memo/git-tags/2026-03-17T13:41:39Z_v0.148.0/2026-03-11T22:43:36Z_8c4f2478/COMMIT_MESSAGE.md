commit 8c4f247824d6fc520dbf9db5962faa41fbc5a2f9
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Wed Mar 11 15:43:36 2026 -0700

    [cmd/mdatagen] Entity-scoped MetricsBuilder API (#14660)
    
    Resolves #14659
    
    Generates an entity-scoped metrics builder API for metrics associated
    with entities in `metadata.yaml`:
    
    - `MetricsBuilder.For<EntityType>(e *<EntityType>Entity)
    *<EntityType>MetricsBuilder`: entity-scoped builder
    - `<EntityType>MetricsBuilder.Record<Metric>DataPoint(...)`: only
    exposes metrics belonging to that entity, enforcing the association at
    compile time.
    - `<EntityType>MetricsBuilder.Emit()`: creates a resource on the root
    metrics builder with defined entities and assigns all the recorded
    metrics to it. Replacement for `EmitForResource`.
    
    Entity types are generated with typed constructors and setters for
    description, `extra_attributes`, and relationships.
    
    The root `MetricsBuilder.Record*DataPoint` and `EmitForResource` are
    deprecated for components that define entities.
    `ResourceBuilder.AssociateWith*` methods are removed in favor of the new
    API.
    
    Also, adds `sampleentityreceiver` as a sample component exercising the
    new API.
