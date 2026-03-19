commit b036e4d8d19a541b5a2b66738073bd5b1c8fe544
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Mon Feb 10 11:52:17 2025 -0500

    [configtls] Add `omitempty` tags to fields (#12311)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This will dramatically reduce YAML output when marshaling config for
    many receivers and exporters since it's commonly used.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    Works toward #12191
