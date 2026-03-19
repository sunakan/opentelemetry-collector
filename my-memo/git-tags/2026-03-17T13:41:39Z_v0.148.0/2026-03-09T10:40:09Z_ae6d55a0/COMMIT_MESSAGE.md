commit ae6d55a0392d8fadc8f415efb92e6e0e965e8e37
Author: Shaanveer Singh <146979751+ShaanveerS@users.noreply.github.com>
Date:   Mon Mar 9 11:40:09 2026 +0100

    [builder] Add .exe to output binary names when building for Windows (#14658)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This PR fixes builder output naming on Windows by appending .exe to the
    compiled binary name when ocb runs on Windows.
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #12591
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Added unit test for Windows/non-Windows output naming
    
    ---------
    
    Signed-off-by: Shaanveer Singh <shaanver.singh@gmail.com>
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
