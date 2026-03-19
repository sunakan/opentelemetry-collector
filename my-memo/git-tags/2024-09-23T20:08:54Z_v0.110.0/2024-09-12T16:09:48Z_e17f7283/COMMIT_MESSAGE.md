commit e17f72833572c19430624fabe986a9ac4651d944
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Sep 12 18:09:48 2024 +0200

    [confmap] Do not leak expanded values on Sub (#11157)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Fixes `Sub` method to drop string representation if the requested
    sub-conf has it.
    
    #### Link to tracking issue
    Fixes #11154
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    
    Added unit tests.
