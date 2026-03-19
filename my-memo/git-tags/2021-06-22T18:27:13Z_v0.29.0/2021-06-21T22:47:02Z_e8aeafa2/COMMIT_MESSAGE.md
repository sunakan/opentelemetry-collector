commit e8aeafa28e6557e93b41d587a0d8cdb94224bec7
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Mon Jun 21 18:47:02 2021 -0400

    prometheus: scrapers are not stopped when receiver is shutdown (#3450)
    
    During receiver shutdown discovery is stopped. However, any previously
    discovered targets will continue to be scraped. This calls `Stop` on the scrape
    manager to stop the scraping on shutdown as well.
    
    **Issue:** https://github.com/signalfx/splunk-otel-collector/issues/471
    
    **Testing:**
    - added check to Prometheus end to end test that scraping is actually stopped
    - tested end to end with receivercreator,  saw that scraping actually stopped after pod was deleted
