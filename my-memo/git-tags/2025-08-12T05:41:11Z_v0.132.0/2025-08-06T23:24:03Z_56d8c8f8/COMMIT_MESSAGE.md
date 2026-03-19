commit 56d8c8f8ff2d0f7b7fc68cd0ea70915fb9977f0c
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Aug 6 16:24:03 2025 -0700

    [chore] Move marshal/unmarshal JSON to work with origin (#13581)
    
    Remove the complication about internal/public for all funcs that only
    need origin. Also improves significant testing.
    
    This simplified a lot the fields (no more isCommon/isBaseCommon/etc.)
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
