commit 40d6a556f101826f75900773542fd406ad12c5eb
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Mon Jun 28 14:07:24 2021 -0400

    scraperhelper: use common scraping interface (#3487)
    
    * scraperhelper: use common scraping interface
    
    This removes the MetricsScraper and ResourceMetricsScraper interfaces in favor
    of a single Scraper interface that scrapes and returns pdata.Metrics. There
    were already helper wrappers that allow users to return MetricSlices and
    ResourceMetricSlices. These helpers package those results into pdata.Metrics
    for the base interface.
    
    Resolves #3085: This also removes the multiMetricScraper which wrapped multiple
    scrapers to appear as a single scraper but then functions like scraper.ID()
    would be empty. This was evident when trying to log errors and you couldn't
    figure out what scraper made the error because it was wrapped in the
    multiscraper.
    
    * review updates
