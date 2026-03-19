commit ae6cd6500cb2f33ccd14a7cf57c7e318cfa8104f
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Nov 21 12:24:13 2022 -0800

    Remove Validate() from Config interfaces and make it optional interface (#6544)
    
    The reason is to remove every Config to include the "config.*Settings" structs, which is one of the functionality they offer.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
