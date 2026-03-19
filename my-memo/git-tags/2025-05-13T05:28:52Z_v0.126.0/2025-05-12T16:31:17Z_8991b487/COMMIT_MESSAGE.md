commit 8991b4879686e26ad3707846b2d784077d5490da
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon May 12 09:31:17 2025 -0700

    Avoid allocating too much memory, sampling logic is not re-applied (#13015)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Avoid re-creating sampler counters every time we wrap with attributes.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Updates #13014
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: Jade Guiton <jade.guiton@datadoghq.com>
