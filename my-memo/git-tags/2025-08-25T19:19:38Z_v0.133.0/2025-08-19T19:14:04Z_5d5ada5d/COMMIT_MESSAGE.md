commit 5d5ada5d6a3fbe6b1c7f317c7192a9274a01eff9
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Aug 19 12:14:04 2025 -0700

    [chore] Remove internal.NewOrig* that returns directly the value (#13676)
    
    The only non-test change is in the Unmarshal proto but that generates
    exactly the same code using the "defaultValue" for the message.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
