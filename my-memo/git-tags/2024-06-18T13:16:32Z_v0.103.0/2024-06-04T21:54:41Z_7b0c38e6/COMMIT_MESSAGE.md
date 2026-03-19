commit 7b0c38e60912451dd37972a546c303d22a1ece7a
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Tue Jun 4 14:54:41 2024 -0700

    [mdatagen] make meter a struct member of telemetryBuilder (#10314)
    
    This will be used in a follow up PR that allows initialization of
    optional internal metrics which address the queue metric use-case.
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
