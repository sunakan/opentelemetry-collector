commit 5a8d03944020b3c5a11aa3766a7657d36b86decd
Author: ASAKURA Kazuki <32762324+Arthur1@users.noreply.github.com>
Date:   Sat Jul 6 01:15:51 2024 +0900

    [mdatagen] bugfix: fix generated package test when skipping goleak, because os package import is forgotten (#10486)
    
    #### Description
    
    When `tests.goleak.skip` flag is set to true, the
    generated_package_test.go is missing the `import os` statement. I
    added the missing import in this PR.
    
    #### Testing
    
    Compare the generated generated_package_test.go when tests.goleak.skip
    flag is toggle from false to true.
    
    **before**
    
    ```diff
    --- a/receiver/runnreceiver/generated_package_test.go
    +++ b/receiver/runnreceiver/generated_package_test.go
    @@ -3,10 +3,10 @@
     package runnreceiver
    
     import (
    -       "go.uber.org/goleak"
            "testing"
     )
    
     func TestMain(m *testing.M) {
    -       goleak.VerifyTestMain(m)
    +       // skipping goleak test as per metadata.yml configuration
    +       os.Exit(m.Run())
     }
    ```
    
    **after**
    
    ```diff
    --- a/receiver/runnreceiver/generated_package_test.go
    +++ b/receiver/runnreceiver/generated_package_test.go
    @@ -3,10 +3,11 @@
     package runnreceiver
    
     import (
    -       "go.uber.org/goleak"
    +       "os"
            "testing"
     )
    
     func TestMain(m *testing.M) {
    -       goleak.VerifyTestMain(m)
    +       // skipping goleak test as per metadata.yml configuration
    +       os.Exit(m.Run())
     }
    ```
