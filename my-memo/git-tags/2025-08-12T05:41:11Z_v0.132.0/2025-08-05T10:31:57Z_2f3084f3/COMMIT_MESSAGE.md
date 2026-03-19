commit 2f3084f3a72e406bedde499909629f01cad787c3
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Aug 5 12:31:57 2025 +0200

    [chore] Fix ignored paths in cspell CI (#13561)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Fixes cspell workflow to:
    1. Run only once on PRs instead of one because of the push and one
    because of the PR
    2. Run on all files to avoid issues with the incremental mode
    3. Use `globRoot` option to make sure that we ignore the right files
    (thanks @jade-guiton-dd!)
