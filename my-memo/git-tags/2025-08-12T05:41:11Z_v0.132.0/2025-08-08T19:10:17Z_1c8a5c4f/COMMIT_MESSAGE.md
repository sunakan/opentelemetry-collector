commit 1c8a5c4f37da7a09ce6b1ebfcc2216a80c453cfb
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Fri Aug 8 15:10:17 2025 -0400

    [cmd/mdatagen] Use own noop host implementation (#13589)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Use a custom noop host implementation that implements all
    non-deprecated, publicly-accessible interfaces implemented by the
    Collector service.
    
    I didn't implement the `ExposeExporters` interface since it is
    deprecated.
    
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/13577.
