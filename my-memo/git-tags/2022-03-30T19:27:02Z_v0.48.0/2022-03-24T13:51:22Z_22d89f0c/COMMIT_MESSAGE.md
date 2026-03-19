commit 22d89f0cf765f745efd7a2eabbb21a6a31ebefa7
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Mar 24 15:51:22 2022 +0200

    Fix JSON serialization tests (#5079)
    
    This happened because the upgrade to otlp 0.15.0 is not fully implemented to deal with backwards compatibility.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
