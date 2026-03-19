commit 18d5c02ade6f41f2cf8d01d3fa7a0fb8f97534a8
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Aug 22 12:22:23 2024 +0200

    Move processor builders into internal service (#10782)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This moves the processor builder out of the `processor` package, and
    into `service/internal/builders`.
    There's no real reason for this struct to be public (folks shouldn't
    call it), and making it private will allow us to add profiling support
    to it.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/pull/10375#pullrequestreview-2144929463
