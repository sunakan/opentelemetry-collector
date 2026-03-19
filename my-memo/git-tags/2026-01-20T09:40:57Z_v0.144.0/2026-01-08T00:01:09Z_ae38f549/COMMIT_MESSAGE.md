commit ae38f549dad868d21a9a066d058516b1ffd0f9e5
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Wed Jan 7 16:01:09 2026 -0800

    Add support for deprecated component type aliases (#14349)
    
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/14208
    
    This change allows component authors to register one optional deprecated
    alias per component type, enabling smooth migrations when renaming
    components. When an alias is used in configuration, the collector will
    automatically resolve it to the original component and log a deprecation
    warning.
    
    Changes:
    - Add `WithDeprecatedTypeAlias` factory option to experimental modules
    (xreceiver, xexporter, xprocessor, xconnector)
    - Generate alias expansion code in builder template that:
      - Populates factory maps with aliases pointing to original factories
      - Updates module information maps for aliased types
      - Validates that aliases don't conflict with existing component types
    - Add deprecation warnings that log when an alias is used: "Using
    deprecated alias <alias>; use <original> instead"
    
    Extensions are left aside for now.
