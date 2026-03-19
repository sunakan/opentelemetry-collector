commit 549ee7220f3e3826ee11d69ea6a6145b4f158152
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Aug 22 11:04:43 2024 +0200

    Move extension builder into internal service (#10785)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This moves the connector builder out of the `connector` package, and
    into `service/internal/builders`.
    There's no real reason for this struct to be public (folks shouldn't
    call it), and making it private will allow us to add profiling support
    to it.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/pull/10375#pullrequestreview-2144929463
    
    While this is not technically required for the profiles work (there is
    no notion of signals in extensions), this PR is here to keep things
    consistent.
