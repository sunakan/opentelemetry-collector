commit e1f670844604a5b119d8560bc079ceca4c92bf72
Author: Damien Mathieu <42@dmathieu.com>
Date:   Tue Jun 3 13:20:25 2025 +0200

    Add MoveAndAppendTo to pdata primitive slices (#13074)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    pdata primitive slices are missing `MoveAndAppendTo`, and we're going to
    start needing it with the profiles proto upgrade (which has a dictionary
    object with primitive type slices that we will need to merge at some
    point)
