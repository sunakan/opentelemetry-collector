commit 7dcc512f268a67c0482c0fb69d82c565a0480a50
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Feb 4 17:39:50 2022 -0800

    Transform configmapprovider.Retrieved to a struct (#4789)
    
    * Transform configmapprovider.Retrieved to a struct
    
    The non deprecated core is moved to provider.go for readability improvement.
    
    Deprecates all the old interface funcs, and helpers to construct the struct.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Address feedback
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
