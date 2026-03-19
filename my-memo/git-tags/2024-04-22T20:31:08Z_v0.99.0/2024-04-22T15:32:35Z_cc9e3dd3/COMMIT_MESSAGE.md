commit cc9e3dd3ec26cf9c5e8d8995175a06de9382853b
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Apr 22 08:32:35 2024 -0700

    [mdatagen] Rename include/exclude config options (#9960)
    
    The `include` and `exclude ` options in the resource attributes group
    sound confusing. It's easy to assume that matching filters will include
    or exclude resource attributes themselves while they control emitted
    resource metrics.
    
    The proposal is to change the include/exclude options to
    `metrics_include`/`metrics_exclude` with detailed comments. These names
    make it cleaner that matching rules limit the emitted metrics, not
    resource attributes.
    
    Updates
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/25134
