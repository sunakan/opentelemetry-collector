commit a4ae17511157ab1ac9a4d65d7073253b7a0d5ecf
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Feb 13 17:56:20 2025 +0100

    [*test] Add NewNopSettingsWithType everywhere (#12357)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Creates `NewNopSettingsWithType` function on test modules and deprecates
    the `NewNopSettings` functions on those modules. Replace all usages of
    `NewNopSettings` with `NewNopSettingsWithType`.
    
    Part of #12305 but applied to all component kinds.
    
    #### Link to tracking issue
    Updates #12221
