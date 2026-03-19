commit 109c917e75b0c0f9d9331f4439dc143037550c9d
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Aug 17 18:17:19 2022 -0700

    Deprecate for good the FlagsStruct types (#5933)
    
    They cannot be removed, unless we apply an exception, since the Deprecation was not correctly marked in golang/godoc because of the missing ":".
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
