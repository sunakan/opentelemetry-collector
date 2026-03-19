commit 183d7edf9f122ed23c30edcdc5a53f7c9f2dc2de
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Feb 7 21:15:42 2025 +0100

    [extension] Error out if passed extension.Settings has incorrect type (#12305)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Explicitly error out if the passed `component.ID` does not have a
    matching `component.Type`
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Updates #12221
