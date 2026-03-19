commit 811b19c99b29efa4cb11e678fbe3429fae80f3b8
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Jul 24 22:38:30 2025 +0300

    Fix JSON unmarshal and add e2e tests (#13480)
    
    When Entity was added, we forgot to update the unmarshal logic. Add e2e
    tests so that this cannot happened in the future.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
