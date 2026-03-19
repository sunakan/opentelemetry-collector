commit 2d25853c5f186585c626b183c7f169c4527d853d
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Oct 3 16:54:55 2024 +0200

    Use slices of pointers in pprofile (#11339)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    All these slices of values have a potential to store large amounts of
    data, and should therefore be slices of pointers.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #11281
    
    cc @mx-psi @bogdandrutu
