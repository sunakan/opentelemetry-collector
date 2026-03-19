commit b4ae0ba32520c2787d22591ffe83e9a4be5415f7
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Thu Jan 2 11:10:41 2025 -0800

    [chore] restrict workflow steps to necessary permissions (#11973)
    
    This updates the prepare release workflow. It:
    
    - adds a top level permission to read-all only
    - breaks apart checking for blockers that doesn't need special
    permissions
    - breaks apart the piece to create an issue that only needs issues:
    write
    - adds contents: write  to the last piece that creates a commit and a PR
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
