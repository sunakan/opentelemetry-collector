commit 7cd8f588399bb2bcc18da81c43a6e17df4a6984d
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Fri Mar 13 11:37:54 2026 -0700

    [cmd/mdatagen] [chore] Fix entity-scoped MetricsBuilder to respect resource_attributes config (#14762)
    
    This fixes feature brought in
    https://github.com/open-telemetry/opentelemetry-collector/pull/14660. No
    need for changelog if we can merge it before the release
    
    The `Emit()` method in generated entity builders was calling
    `entity.CopyToResource()` unconditionally, ignoring the
    `resource_attributes` configuration set by the user.
    
    Fix the code generator so that entity structs store attribute values in
    plain unexported fields instead of eagerly building an `entity.Entity`.
    At `Emit()` time, each entity struct's `copyToResource()` method applies
    the ResourceAttributesConfig:
    - Disabled identity attributes: suppress the entity entirely; other
    enabled attributes are still written directly to the resource without
    entity association.
    - Disabled descriptive/extra attributes: entity is produced normally but
    the disabled attribute is omitted.
