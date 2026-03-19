commit 78df5c72436e6aaefcfda211c90980664104a2b8
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Aug 5 10:15:46 2024 +0200

    [confmap] Use values as string if YAML is invalid (#10794)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    If YAML parsing fails, assume the user wanted to pass the value as a
    string.
    
    This has the downside that the error messages are less informative: it
    will tell you it expected something other than a string instead of the
    YAML parser error.
    
    A future improvement could be to pass these errors down as extra
    metadata up until the unmarshaling stage.
    
    #### Link to tracking issue
    
    Fixes #10759
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    
    Added test case for this.
