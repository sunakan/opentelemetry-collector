commit d1a5e5abb842ae07c943190d5d930eaa5d3c3a39
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Sep 18 17:46:49 2025 +0200

    [configoptional] Add GetOrInsertDefault method (#13859)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Adds `GetOrInsertDefault` method to `configoptional.Optional`. Uses it
    in tests.
    
    We originally did not do this because we only had use cases for this in
    tests. However #13856 shows that this is useful in programmatic use
    cases as well.
    
    #### Link to tracking issue
    
    Fixes #13856
