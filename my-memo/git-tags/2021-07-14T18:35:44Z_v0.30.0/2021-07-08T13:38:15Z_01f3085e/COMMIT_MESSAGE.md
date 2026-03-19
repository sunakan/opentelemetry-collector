commit 01f3085e28283ff4f08f95968f08d0de448838c6
Author: Anthony Mirabella <a9@aneurysm9.com>
Date:   Thu Jul 8 09:38:15 2021 -0400

    receiver/prometheus: avoid nil pointer deref when adjusting metric points (#3486)
    
    Fixes bounds check and nil pointer dereferences that may occur when adjusting histogram and summary metric points.
    
    **Link to tracking Issue:** #3058
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
