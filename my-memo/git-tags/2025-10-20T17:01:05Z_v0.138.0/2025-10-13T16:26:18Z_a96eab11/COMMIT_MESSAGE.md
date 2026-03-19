commit a96eab114ea40ce347766fd3f791cb5bcf871eae
Author: Mahad Zaryab <43658574+mahadzaryab1@users.noreply.github.com>
Date:   Mon Oct 13 12:26:18 2025 -0400

    Fix Helpers For Marshalling And Unmarshalling pcommon.Value (#13945)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    - This PR fixes the helpers for AnyValue by changing the API to accept
    `pcommon.Value`. Since `otlpcommon.AnyValue` is an internal type, the
    current helpers are not useful as a public API.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #13837 (original issue #12826)
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    - Updated unit tests
    
    ---------
    
    Signed-off-by: Mahad Zaryab <mahadzaryab1@gmail.com>
