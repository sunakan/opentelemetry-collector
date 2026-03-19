commit 7cd1579d1f7ac1b8a18216b1350c4e2bdbfa6d68
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Aug 22 11:43:35 2024 +0200

    Move exporter builder into internal service (#10783)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This moves the exporter builder out of the `exporter` package, and into
    `service/internal/builders`.
    There's no real reason for this struct to be public (folks shouldn't
    call it), and making it private will allow us to add profiling support
    to it.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/pull/10375#pullrequestreview-2144929463
