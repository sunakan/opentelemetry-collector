commit 70e040a2be722e07f564e50a1fb617635c690699
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Apr 14 10:52:00 2022 -0700

    Fix translation from otlp.Request to pdata representation (#5197)
    
    The problem that this PR tries to fix, is that changes in the traces object return by the otlp.Request are not reflected in the Request.
    
    The solution is to wrap the request proto instead of the data proto, since for the marshalers we don't have an equivalent object that shares the same problem as Request.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
