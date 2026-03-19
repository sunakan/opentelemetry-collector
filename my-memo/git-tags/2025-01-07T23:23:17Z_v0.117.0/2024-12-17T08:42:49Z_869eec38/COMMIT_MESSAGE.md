commit 869eec38f370405f9ce7f00e6d143ee901d11512
Author: Matthieu MOREL <matthieu.morel35@gmail.com>
Date:   Tue Dec 17 09:42:49 2024 +0100

    [chore]: enable partially thelper linter (#11895)
    
    #### Description
    
    [Thelper](https://golangci-lint.run/usage/linters/#thelper) detects
    tests helpers which is not start with t.Helper() method.
    
    This only enables rules for naming and paramter order
    
    Signed-off-by: Matthieu MOREL <matthieu.morel35@gmail.com>
