commit 56a22adb7343e2d761e530167e0cb70ea02186f9
Author: Pablo Collins <pablo.collins@gmail.com>
Date:   Wed Aug 5 16:46:23 2020 -0400

    Move some content from correctness_test.go to utils.go (#1497)
    
    * Move some content from correctness_test.go to utils.go
    
    This change makes these functions/types available from the metrics
    package, where they will be needed to address issue #652.
    
    * Add comments for exported types and fcns
    
    * Address PR comments
    
    * Fix lint
