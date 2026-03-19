commit 5d5fb21acf952413e6b1c106bbe3819a8cadfd19
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Thu Feb 6 10:53:20 2025 -0600

    Introduce component logger with appropriate attributes (#12259)
    
    Implements the logger described in
    https://github.com/open-telemetry/opentelemetry-collector/issues/12217
    
    Alternative to #12057
    
    Resolves #11814
    
    `component/componentattribute`:
    - Initializes new module
    - Defines constants for component telemetry attribute keys
    - Defines a `zapcore.Core` which can remove attributes from the root
    logger
    
    `service`:
    - Rebases component instantiation on attribute sets
    - Internal constructors for attribute sets for each component type
    - Constructs loggers from `componentattribute`
    
    `otlpreceiver`:
    - Uses `componentattribute` to remove `otelcol.signal` attribute from
    logger
    
    `memorylimiter`:
    - Uses `componentattribute` to remove `otelcol.signal`,
    `otelcol.pipeline.id` and `otelcol.component.id` attributes from logger
