commit 5102a1ec658ecb42e4e08c29014f2e2ce9f80e5e
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Sep 13 17:29:43 2024 +0200

    [cmd/builder] Disable strict version check (#11168)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Disable strict version check. The `--skip-strict-version-check` is kept
    but is now a no-op.
    
    This fixes #11152.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #11152
