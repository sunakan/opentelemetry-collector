commit c1af501cf7e58e53442cd74dd80622c70bda4e3c
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Feb 27 13:24:18 2025 +0100

    [connector,exporter,processor,receiver] Error out on mismatched type (#12381)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Error out on mismatched type for all component kinds. Same as #12305 but
    for all component kinds.
    
    #### Link to tracking issue
    
    Requires #12357
    Fixes #12221
