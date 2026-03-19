commit 6bd77b33a5f68d462845b4e5d92f27d12dc46ef6
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri May 9 11:36:54 2025 +0200

    [chore] Add tests loading nil to any (#12998)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    While working on #12981, I would have found it useful to have these
    tests, since they surfaced a bug when enabling `DecodeNil`.
