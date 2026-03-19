commit bacb72698a1e55ac32f848fabcc4c4953d9647ec
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Nov 23 11:01:32 2020 -0500

    Remove flakiness of the code coverage in the resource to OC (#2204)
    
    The problem was that there were multiple places (duplicate code) where different parts of
    the OC Node struct were initialized, so tests needed to cover all duplicated code. The
    current PR removes duplicate code so ensures the coverage is not flaky.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
