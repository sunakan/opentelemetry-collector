commit fbc0ce074899244ebd05090f98adf072e50b2412
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Tue Mar 12 04:31:20 2024 -0700

    [confmap] confmap honors `Unmarshal` methods on config embedded structs. (#9635)
    
    **Description:**
    This implements support for calling `Unmarshal` on embedded structs of
    structs being decoded.
    
    **Link to tracking Issue:**
    Fixes #6671
    
    **Testing:**
    Unit tests.
    
    Contrib fix is open:
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/31406
