commit b8830dd7c6346ac558569d887ee0da079fb8a0d4
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue Mar 11 10:51:43 2025 -0400

    [confmap] Maintain nil slice values when marshaling and unmarshaling (#11882)
    
    Expands on
    https://github.com/open-telemetry/opentelemetry-collector/pull/11755 to
    show how we could test for a 1:1 mapping between map[string]any <->
    `confmap.Conf` <-> Config structs for `[]any(nil)` and `[]any{}` slices.
