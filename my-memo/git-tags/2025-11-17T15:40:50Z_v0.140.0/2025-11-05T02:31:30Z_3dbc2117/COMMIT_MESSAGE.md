commit 3dbc211771a293de779a5fd5e47e4f88e1f44465
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Tue Nov 4 18:31:30 2025 -0800

    [cmd/mdatagen] Add basic support for entities to metadata.yaml schema (#14053)
    
    When entities are defined, mdatagen generates
    `AssociateWith{EntityType}()` methods on ResourceBuilder that associate
    resources with entity types using the entity refs API. The `entities`
    section is backward compatible - existing metadata.yaml files without
    entities continue to work as before. This change is fully additive and
    conditionally executed only if metadata.yaml has `entities` defined.
    
    The generated Go API is experimental and will change to entities
    builder. However, for now, it allows introducing concept of entities in
    mdatagen and emit entities attached to the resource.
    
    The new metadata.yaml syntax for defining entities adopts [Weaver
    v2](https://github.com/open-telemetry/weaver/blob/main/schemas/semconv-syntax.v2.md#entities-definition)
    
    Updates
    https://github.com/open-telemetry/opentelemetry-collector/issues/14051
