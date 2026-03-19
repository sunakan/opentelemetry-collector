commit 0961efb54f1f585b86bac4de4641e7bd94509923
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Mar 2 13:43:58 2021 -0500

    Fix Shutdown behavior for batchprocessor (#2537)
    
    I added a Shutdown() test that does basic verification of the behavior of the
    Shutdown() function. More verifications can be added later.
    
    The test revealed a bug in batchprocessor Shutdown() function which would
    not wait until all pending data was drained.
