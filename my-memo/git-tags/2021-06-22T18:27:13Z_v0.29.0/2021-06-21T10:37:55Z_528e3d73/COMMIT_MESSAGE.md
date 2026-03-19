commit 528e3d7377c43f64fc7e3c358693adf791f58489
Author: Josh Suereth <joshuasuereth@google.com>
Date:   Mon Jun 21 06:37:55 2021 -0400

    Fix missing startTimestamp for processes scraper. (#3461)
    
    * Fix missing startTimestamp for processes scraper.
    
    - Wire boot timestamp through to processes scraper (matches all other host metrics receivers).
    - Add a more verbose output on timestmap failure for easier diagnostics when making failing changes to these tests.
    - Update tests to ensure starttime is set in resulting metrics.
    
    * Fix bug with start time calculation.
