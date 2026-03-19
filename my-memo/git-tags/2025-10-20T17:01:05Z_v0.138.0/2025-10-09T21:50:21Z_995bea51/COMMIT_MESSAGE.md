commit 995bea5150603d41fbb1a3f9f9a55509d49bea00
Author: Carson Ip <carsonip@users.noreply.github.com>
Date:   Thu Oct 9 22:50:21 2025 +0100

    [confighttp] Fix zstd decoder data corruption due to decoder pooling (#13955)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    See bug description in #13954
    
    Fix zstd decoder pool and data corruption by guarding against multiple
    reader Close.
    
    As this is a security issue, ideally the change goes out in an emergency
    bugfix release
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #13954
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Confirmed it does not fail test in #13954
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
