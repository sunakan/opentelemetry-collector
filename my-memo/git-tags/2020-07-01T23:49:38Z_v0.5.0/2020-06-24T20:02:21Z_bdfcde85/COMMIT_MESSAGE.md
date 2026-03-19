commit bdfcde856f9b8c1f8b44fcd40be5c685517a0a5a
Author: Jeff Cheng <jeffreyc@splunk.com>
Date:   Wed Jun 24 16:02:21 2020 -0400

    Fix dead links and add link checker circleci job (#1156)
    
    - Fixes dead links in docs
    - Add circleci job to check links in markdown docs
    
    **Link to tracking Issue:**
    #1155
    
    **Testing:**
    Tested the new `check-links` job locally with the `circleci` command line tool.
    
    **Documentation:**
    Added .circleci/check-links/README.md
