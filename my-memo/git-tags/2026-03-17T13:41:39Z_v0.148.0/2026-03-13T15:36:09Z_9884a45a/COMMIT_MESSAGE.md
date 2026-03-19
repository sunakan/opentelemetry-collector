commit 9884a45a56a14af0ed89641e678f3063b6ba980c
Author: Florian Lehner <florianl@users.noreply.github.com>
Date:   Fri Mar 13 16:36:09 2026 +0100

    [chore][pkg/exporterhelper] fix test naming and referenced attributes (#14767)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Fix the naming of a test function from TestMergeSplitManySmallLogs to
    TestMergeSplitManySmallProfiles - was likely a copy/paste issue.
    And make sure data from GenerateProfiles() is correct.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Signed-off-by: Florian Lehner <florian.lehner@elastic.co>
