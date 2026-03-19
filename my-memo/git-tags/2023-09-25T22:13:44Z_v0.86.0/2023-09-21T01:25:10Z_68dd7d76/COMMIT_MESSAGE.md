commit 68dd7d763b599146ce96d3b936f74666af9db757
Author: Alex Boten <aboten@lightstep.com>
Date:   Wed Sep 20 18:25:10 2023 -0700

    Deprecating obsreport scraper and receiver API (#8498)
    
    These deprecated methods/structs have been moved to receiverhelper and
    scraperhelper:
      - `obsreport.Receiver` -> `receiverhelper.ObsReport`
      - `obsreport.ReceiverSettings` -> `receiverhelper.ObsReportSettings`
      - `obsreport.NewReceiver` -> `receiverhelper.NewObsReport`
      - `obsreport.Scraper` -> `scraperhelper.ObsReport`
      - `obsreport.ScraperSettings` -> `scraperhelper.ObsReportSettings`
      - `obsreport.NewScraper` -> `scraperhelper.NewObsReport`
    
    ~Follows #8496~
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
