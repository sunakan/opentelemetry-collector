commit c657d5d4e920c20052a12820abeef928e743c609
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Tue Oct 21 16:15:22 2025 -0700

    [mdatagen] Replace attributes optional field with requirement_level (#13913)
    
    metadata.yaml schema change for attributes: boolean `optional` field
    replaced with enum `requirement_level` field with the following options:
        - `required`: attribute is always included and cannot be excluded
    - `conditionally_required`: attribute is included by default when
    certain conditions are met (replaces `optional: true`)
    - `recommended`: attribute is included by default but can be disabled
    via configuration (replaces `optional: false`)
    - `opt_in`: attribute is not included unless explicitly enabled in user
    config
    
    The `recommended` option is assumed when requirement_level isn't
    specified explicitly which is the case for the vast majority use cases.
    
    metadata.yaml files upgrade guideline: Replace `optional: true` with
    `requirement_level: conditionally_required` and `optional: false` with
    `requirement_level: recommended` (or omit for default) in metadata
    files.
    
    This change is needed for
    https://github.com/open-telemetry/opentelemetry-collector/pull/13900
