commit e6cd56dce176d8adecdd567c634d1e69a5616c2e
Author: mrasu <m.rasu.hitsuji@gmail.com>
Date:   Fri Sep 13 00:38:24 2024 +0900

    Make the first argument of NewScraper `component.Type` (#11159)
    
    #### Description
    
    As a step of
    https://github.com/open-telemetry/opentelemetry-collector/issues/9473,
    make the first argument of `scraperhelper.NewScraper` to take
    `component.Type`.
    
    This PR deprecates `NewScraperWithComponentType` as the method is
    temporary and was created to change an argument of `NewScraper`
