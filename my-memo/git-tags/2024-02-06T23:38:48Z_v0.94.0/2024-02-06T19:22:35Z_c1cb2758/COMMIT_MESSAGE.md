commit c1cb2758d2e3551a23aae6fa7e9dc82647e70761
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Tue Feb 6 11:22:35 2024 -0800

    [builder] Close files immediately after writing is complete (#9466)
    
    Ensure that files written by `cmd/builder` are closed right after their
    content is written. This came about while investigating #5403
    
    **Link to tracking Issue:**
    #5403
    
    **Testing:**
    Local run on Windows
    
    **Documentation:**
    N/A
