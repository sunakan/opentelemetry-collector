commit 6a276ba7afa13929bc2d1a43c70ba00e52c3aa1c
Author: Antoine Toulme <atoulme@splunk.com>
Date:   Tue Nov 12 10:41:11 2024 -0700

    [receiver/scraperhelper] exit before scraping if the receiver was shutdown (#11632)
    
    #### Description
    exit before scraping if the receiver was shutdown, do not wait the
    initial delay.
