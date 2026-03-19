commit e7ce1d50fb5e33deb66fdd7912ef747c2bcfd3b6
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Jul 9 11:31:54 2024 +0200

    [otelcol] Add hint about `confmap.strictlyTypedInput` feature gate (#10553)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Adds coda to errors related to `confmap.strictlyTypedInput` that direct
    users to #10552 and explain the feature gate.
    
    #### Link to tracking issue
    
    Updates #9532
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Tests that the coda is present when there are weakly typed errors and
    not present with non weakly-typed errors.
    
    <!--Describe the documentation added.-->
