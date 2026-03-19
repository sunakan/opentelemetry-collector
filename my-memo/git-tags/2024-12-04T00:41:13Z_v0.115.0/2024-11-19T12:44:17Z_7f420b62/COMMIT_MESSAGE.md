commit 7f420b62af5c0a7b1cbb0e6dc1f3a7f0cb841280
Author: Constança Manteigas <113898685+constanca-m@users.noreply.github.com>
Date:   Tue Nov 19 13:44:17 2024 +0100

    [Profiles] Fix sample count iteration (#11688)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Sample count iteration for profiles is incrementing the wrong variable
    inside the loop, which causes the result to be wrong.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    The refactored unit test covers this case.
