commit cb546d86542745f67d1b91a0412e86fc0d897a06
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Aug 6 11:30:28 2025 -0700

    [chore] Move FillOrigTest to use orig and always in internal (#13578)
    
    This PR allows to add tests for CopyOrig directly in the internal
    package, also enables us to move more things to internal (including
    tests) for Marshal/Unmarshal.
    
    After this PR is merged we can generate the ProtoSize and other proto
    helpers in internal.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
