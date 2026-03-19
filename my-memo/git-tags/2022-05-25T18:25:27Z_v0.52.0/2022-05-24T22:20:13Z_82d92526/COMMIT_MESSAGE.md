commit 82d92526afebb29efe007d438fd115410292fdda
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue May 24 15:20:13 2022 -0700

    BreakingChange: Change to use interface instead of func for MapConverter (#5382)
    
    The main reason to do this, is because if in the future we want to extend the capabilities of the "MapConverter" we don't have any way to do that. By using an interface we can define "optional" interfaces that some converters may implement to enable future improvements.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
