commit 1b61151c4a2ff9dc51716daaa39c882717edd02a
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Oct 12 21:18:38 2020 -0700

    Remove base receiver helper, rename to ScraperController (#1946)
    
    * Remove base receiver helper, rename to ScraperController
    
    This PR also removes duplicate code for scheduling scrapers by providing a ResourceMetricScraper
    wrapper for a list of MetricScrapers.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Fix lint, fix NewScraperControllerReceiver
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
