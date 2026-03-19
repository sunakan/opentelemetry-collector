commit 043099e94245dfa6bba266698ed3a01fb93ba070
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Jul 24 12:25:36 2025 +0200

    [chore] Use 'stable' and 'oldstable' instead of particular versions (#13461)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Since [V3](https://github.com/actions/setup-go?tab=readme-ov-file#v3)
    the setup-go action supports the `stable` and `oldstable` aliases.
    Switching to them would allow us to ensure our compatibility promise
    without constant updates.
    
    ---------
    
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
