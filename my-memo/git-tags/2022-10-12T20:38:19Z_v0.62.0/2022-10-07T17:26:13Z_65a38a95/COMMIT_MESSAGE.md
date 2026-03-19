commit 65a38a95f4ac3b0ff8bf245e3ca2cca3a1ddd169
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Oct 7 10:26:13 2022 -0700

    Add options to confmap Marshal/Unmarshal, deprecat UnmarshalExact (#6231)
    
    Officially this can be considered breaking change because of a use in a `var foo func(interface{}) error = conf.Unmarshal`, not in a normal calling usage, but this is an edgecase that we can except and move forward with this.
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
