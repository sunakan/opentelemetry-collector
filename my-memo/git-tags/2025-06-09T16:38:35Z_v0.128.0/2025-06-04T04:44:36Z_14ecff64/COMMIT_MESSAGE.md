commit 14ecff64a5dd5429cb8d75b2c700614d18ded152
Author: Chao Weng <19381524+sincejune@users.noreply.github.com>
Date:   Wed Jun 4 12:44:36 2025 +0800

    [mdatagen] Fix code generation when there are no events defined in me… (#13122)
    
    …tadata file
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Currently, resourceAttributeIncludeFilter and
    resourceAttributeExcludeFilter are only applicable when event
    configurations are defined.
    
    This PR removes them from the generated code when no events are added in
    the metadata.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    n/a
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Covered in `samplescraper`
    
    <!--Describe the documentation added.-->
    #### Documentation
    Added
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Dmitry Anoshin <anoshindx@gmail.com>
