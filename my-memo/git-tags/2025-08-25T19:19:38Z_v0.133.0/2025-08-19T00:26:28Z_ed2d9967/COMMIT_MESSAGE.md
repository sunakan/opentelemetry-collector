commit ed2d99674cff16b0bfc5bebe910ac3a2faaea3de
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Aug 18 17:26:28 2025 -0700

    [chore] Split proto generation logic in separate directory (#13651)
    
    This PR only separates the proto/data generate logic from pdata logic.
    This PR does not change anything in the generated code, in a followup
    PR, will generate a separate file for the proto/data file.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
