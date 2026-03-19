commit bac08e21f5018c45fce0dc429c9eba97efeb501f
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Apr 21 11:07:57 2025 +0200

    [confmap] Correctly distinguish between empty and nil slices (#12872)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    A second attempt at #11882.
    
    Note that I added some tests in #12871 to prevent something like #12661
    from happening again.
    
    #### Link to tracking issue
    Fixes #11749
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    
    See tests from #12871 as well as the new tests added here.
