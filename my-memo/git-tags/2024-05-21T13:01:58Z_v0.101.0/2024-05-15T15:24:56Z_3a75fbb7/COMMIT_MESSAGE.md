commit 3a75fbb7f4061679b7bddfe89b112148bf7bb3f2
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Wed May 15 11:24:56 2024 -0400

    [confmap] Encode string-like map keys (#10137)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Our check for determining whether a map key can be encoded as a string
    is too restrictive and doesn't into account types which are essentially
    aliases for the string type and don't implement `UnmarshalText`.
    
    I encountered this while trying to call
    `(confmap.Conf).Marshal(*otelcol.Config)` when the config includes a
    Prometheus receiver, which includes the [LabelName
    type](https://github.com/prometheus/common/blob/main/model/labels.go#L98)
    that does not implement an unmarshaling method. We can't guarantee that
    all types will implement this, and [Go's print formatters
    check](https://github.com/golang/go/blob/master/src/fmt/print.go#L803)
    whether `(reflect.Value).Kind()` equals `reflect.String`, so I think
    this will be an overall more robust approach.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    I added two test cases to demonstrate when we will hit this case.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
