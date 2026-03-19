commit 5282449350b73ce65b26ca9a42a1e09ffe686097
Author: Damien Mathieu <42@dmathieu.com>
Date:   Tue Feb 10 17:52:30 2026 +0100

    confighttp: don't run unix-specific test on macos (#14460)
    
    This test can't run on macOS, where abstract unix sockets aren't
    supported.
    This is already kind of hinted with the subtest name.
