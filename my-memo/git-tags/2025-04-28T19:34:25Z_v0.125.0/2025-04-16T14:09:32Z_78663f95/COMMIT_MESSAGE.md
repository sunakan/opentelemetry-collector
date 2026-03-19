commit 78663f9547f03164d922d8732cfeb329a7f21af3
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Apr 16 16:09:32 2025 +0200

    [chore][confmap] Add tests for handling of slices (#12871)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Adds a test for #12661 and another test present on #11882.
    
    I verified that the first test fails in v0.123.0: on this version the
    slice has `[]S{A: "A", B: "B"}` instead.
