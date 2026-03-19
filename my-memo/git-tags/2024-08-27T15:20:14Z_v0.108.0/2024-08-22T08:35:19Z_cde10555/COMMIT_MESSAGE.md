commit cde1055559b0f726a7b62125bd0cbe532831a651
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Aug 22 10:35:19 2024 +0200

    Move connector builder into internal service (#10784)
    
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
