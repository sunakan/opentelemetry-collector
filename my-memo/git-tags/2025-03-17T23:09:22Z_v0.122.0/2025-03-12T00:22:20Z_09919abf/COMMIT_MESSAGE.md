commit 09919abf6771a43d9be0fb11bda5cb74ecdda952
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue Mar 11 20:22:20 2025 -0400

    [chore] Reduce port contention in service tests (#12616)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    I noticed the service tests were a little flaky due to using the default
    Prometheus port. This should at least reduce the frequency where this
    happens if not eliminate it.
    
    I did two things to help elimination contention for the port:
    1. Disable the Prometheus server in tests where it isn't needed.
    2. Ensure the port is randomized in tests where it is needed.
