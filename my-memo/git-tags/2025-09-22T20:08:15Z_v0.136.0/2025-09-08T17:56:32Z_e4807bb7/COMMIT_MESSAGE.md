commit e4807bb767af5b9399fee50648ba80e73d48ddd0
Author: sivchari <shibuuuu5@gmail.com>
Date:   Tue Sep 9 02:56:32 2025 +0900

    [chore] Add phony govulncheck on root (#13204)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    I added phony govulncheck on root, then I found that the some target
    can't run govulncheck on itself, so change the phony name in
    Makefile.Common.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Signed-off-by: sivchari <shibuuuu5@gmail.com>
