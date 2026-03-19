commit 3cfaa77081cfe48da15aa1af532d57c6aa4e39c3
Author: Chris Smith <chris.smith@zocdoc.com>
Date:   Thu Sep 24 16:03:06 2020 -0400

    tailsampling: only send to next consumer once (#1735)
    
    Previously if multiple sampling policies chose to sample, the trace would be send to the next consumer multiple times. This fixes it to only send it once.
    
    Link to tracking Issue: #1514
    
    Testing:
    Unit test added as well as a simple manual test using the reproduction case in the original issue.
