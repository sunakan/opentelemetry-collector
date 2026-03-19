commit 38c8f418784e7dc40e04d5714aab13da4d147935
Author: Erik Westra <e.s.westra.95@gmail.com>
Date:   Wed Aug 14 18:41:38 2024 +0200

    chore (deps): migrate rand to rand/v2 (#10889)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Migrated rand dependency to rand/v2. We only use rand in tests and mocks
    and the only two functions we use are float32 and float64 which still
    exist in the new v2 API so nothing very exciting going on here.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #10885
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Ran `make test` successfully
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Signed-off-by: Erik Westra <e.s.westra.95@gmail.com>
