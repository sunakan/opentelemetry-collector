commit b8dccfc891d3102a5195d3a754a3043afccca268
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Apr 20 16:35:21 2021 -0700

    Add AppendEmpty and deprecate Append for slices (#2970)
    
    This change helps with initialization:
    * Lots of places where we used Resize(1). Some left to limit the PR.
    * Lots of places where New followed by Append, this is equivalent with AppendEmpty.
    
    Append is marked as deprecated, but we need to evaluate if we can change all calls to AppendEmpty,
    or we need to revert the deprecation. The current goal is to remove it if possible.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
