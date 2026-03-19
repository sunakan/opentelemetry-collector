commit 0387e8323b925910c5ab80eb9ac4333d4f79d698
Author: Damien Mathieu <42@dmathieu.com>
Date:   Mon Jun 16 17:56:18 2025 +0200

    Introduce SetMapping for profiles (#13197)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This is part of
    https://github.com/open-telemetry/opentelemetry-collector/issues/13106
    It introduces a new `SetMapping` method, which allows setting a
    location's mapping based on a specific dictionary.
    
    I named the method `SetMapping` and not `PutMapping`, as it overrides
    the `MappingIndex` value, it doesn't append to a slice.
    
    Contrarily to Locations or Attributes, as location has a single mapping.
    So we don't need a `FromMappingIndices` method, we can use
    `MappingSlice.At()` directly.
    
    ---------
    
    Co-authored-by: Tim Rühsen <tim.ruehsen@gmx.de>
