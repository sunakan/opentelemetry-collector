commit b771d13ce2efd608a7a4d62ac79a3084899373d6
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Jan 26 18:10:33 2023 -0800

    Change API to be a bit more go friendly. (#7040)
    
    Similar to FlagSet.Lookup where return pointers, clarifies that nil when error instead of invalid instance. This is not breaking change since this API was added in this version.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
