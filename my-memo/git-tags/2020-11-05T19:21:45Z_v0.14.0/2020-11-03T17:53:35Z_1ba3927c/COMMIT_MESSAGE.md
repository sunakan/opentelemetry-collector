commit 1ba3927cfc21cb78e646467e9f124a546e1c6661
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Nov 3 09:53:35 2020 -0800

    Remove support to set map and array to attribute value (#2039)
    
    This makes things consistent with other generated code where we do not allow
    to set non immutable fields.
    
    User can get access to the Map/Array and change that in-place.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
