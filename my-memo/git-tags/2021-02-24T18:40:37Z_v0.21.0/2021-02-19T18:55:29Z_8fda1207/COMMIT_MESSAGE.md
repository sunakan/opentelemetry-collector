commit 8fda1207c2a4c4e49c9605b99653a49864a58216
Author: Andrei Ozerov <andrei.ozerov92@gmail.com>
Date:   Fri Feb 19 21:55:29 2021 +0300

    Add ScrapeErrors struct to simplify errors usage (#2414)
    
    * Add ScrapeErrors struct to simplify errors usage
    
    Add ScrapeErrors that contains a slice with errors and that has methods
    to simplify adding new PartialScrapeErrors and regular generic errors.
    
    Use new methods to refactor errors appends in
    receiver/hostmetricsreceiver.
    
    Use ScrapeErrors.Combine() in component/componenterror to not create
    cycling dependencies in consumererrors package.
    
    * Component error: do not change CombineErrors yet
    
    Leave componenterror.CombineErrors unchanged to not introduce too
    many changes in a single PR.
    
    Add a note about the necessity of componenterror.CombineErrors
    deprecation.
    
    * ScrapeErrors: do not iterate over all errors
    
    Rename scrapeErrsCount field to failedScrapeCount.
    
    Add failed count in every Add, Addf call of ScrapeErrors and use this
    info to call CombineErrors directly instead of iterating over all errors
    in ScrapeErrors.
    
    Fix filesystemscraper Scrape function to not cast error into
    PartialScrapeError since it will cause panics after combining
    ScrapeErrors. Use NewPartialScrapeError instead.
    
    * ScrapeErrors: fix hostmetricsreceiver Scrape err
    
    Cast getProcessMetadata() error into consumererror.PartialScrapeError to
    get the valid scrape errors count.
    
    * ScrapeErrors: fix multiMetricScraper.Scrape method
    
    Cast Scrape() error into consumererror.PartialScrapeError to
    get the valid scrape errors count and to not skip combined errors.
    
    * ScrapeErrors: check if slice contains partial err
    
    Fix `Combine()` method to check if errs slice contains
    `PartialScrapeError` since we can have scrape errors with 0 failed
    metrics so checking only `failedScrapeCount` field is not enough.
    
    * Fix changing comments in combineerrors_test.go
    
    Do not change comments in
    consumer/consumererror/combineerrors_test.go.
    
    * Component error: apply 5cc0707e changes
    
    Apply 5cc0707e to component/componenterror.
    
    * ScrapeErrors: rename and simplify methods
    
    Use only Add and AddPartial methods.
