commit de35049c0143062886da5f9f7e8f509e11141c4b
Author: John L. Peterson (Jack) <john.peterson@datadoghq.com>
Date:   Thu Nov 14 11:09:50 2024 -0500

    Add local module replacement to ocb template (#11653)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Adds ability to replace Providers and Converters with local paths when
    building custom collector in ocb
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Closes #11649
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    local build of ocb with locally downloaded converter and provider (can
    add this type of test to github actions if others think it is necessary)
    <!--Describe the documentation added.-->
    #### Documentation
    .chloggen file
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
