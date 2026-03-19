commit 662a4c4520b68e32649800f9b92fec9c1fe25f28
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Thu Jun 13 04:52:56 2024 -0700

    [chore] update code to use WithoutCancel (#10397)
    
    This was introduced in go 1.21 and removes the need for a custom
    implementation of the context.
    
    Fixes #9049
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
