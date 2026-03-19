commit e5999578ad90fbbce6374fbd4612b6ed4a89c2e8
Author: mrasu <m.rasu.hitsuji@gmail.com>
Date:   Tue Sep 10 01:05:16 2024 +0900

    Refine scraperhelper.NewScraper to take component.Type directly (#11082)
    
    #### Description
    
    Create new function to enable to pass `component.Type` to
    `scraperhelper.NewScraper`
    
    Because many contrib scrapers name the scraper with the same name as the
    component itself, create a function to take `component.Type`.
    For example,
    https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/0e2bea5ac2763421e1a3943093f67184e109265f/receiver/activedirectorydsreceiver/factory_windows.go#L35
    passes `metadata.Type.String()` as a name of scraper. With this change,
    you can pass `metadata.Type` instead
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #9473
