commit 6cf1fc07326090d5776f5c811a9a3d8a5d2adbb1
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Aug 14 08:41:18 2025 -0700

    Optimize xpdata/context for persistent queue when only one value for key (#13636)
    
    This is a backwards compatible change because on the decoding side we
    support both single value string as well as slice.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
