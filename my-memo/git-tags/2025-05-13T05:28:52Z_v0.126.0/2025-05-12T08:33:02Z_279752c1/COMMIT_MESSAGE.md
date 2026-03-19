commit 279752c11f8dbee727fc0fccc94804c123353ee6
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Mon May 12 01:33:02 2025 -0700

    [service/internal/graph] Measure telemetry as it is passed between pipeline components (#12812)
    
    Depends on
    https://github.com/open-telemetry/opentelemetry-collector/pull/12856
    
    Resolves #12676
    
    This is a reboot of #11311, incorporating metrics defined in the
    [component telemetry
    RFC](https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/rfcs/component-universal-telemetry.md)
    and attributes added in #12617.
    
    The basic pattern is:
    - When building any pipeline component which produces data, wrap the
    "next consumer" with instrumentation to measure the number of items
    being passed. This wrapped consumer is then passed into the constructor
    of the component.
    - When building any pipeline component which consumes data, wrap the
    component itself. This wrapped consumer is saved onto the graph node so
    that it can be retrieved during graph assembly.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
