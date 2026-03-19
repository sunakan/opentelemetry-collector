commit ce6535092daee23d1d7492844dee639a24cd803d
Author: Sean Marciniak <30928402+MovieStoreGuy@users.noreply.github.com>
Date:   Sat Jun 3 03:26:52 2023 +0930

    [scrapehelper] Make the initial scrape interval configurable (#7635)
    
    This change will allow scrapers to start gather values on scrape controller start instead of having to wait for scrape controller duration to perform the initial scrape.
    
    This is particularly useful for components such as hostmetrics receiver that generate utilization metrics that require an initial state to compute that value. With this change, it means that this metrics will start being sent from Start + Duration instead of Start + 2*Duration which for scrape durations like 30s means that this value won't be sent til a minute has elapsed.
