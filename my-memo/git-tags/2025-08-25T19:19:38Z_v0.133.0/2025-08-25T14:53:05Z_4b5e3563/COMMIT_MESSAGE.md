commit 4b5e35631f354b012093946981b67e23b4a5c094
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon Aug 25 07:53:05 2025 -0700

    [service] ensure insecure config is taken into consideration (#13691)
    
    This updates the function that normalizes the endpoint to consider the
    setting for `insecure` when prefixing the endpoint.
    
    Fixes #13690
    
    ---------
    
    Signed-off-by: alex boten <223565+codeboten@users.noreply.github.com>
