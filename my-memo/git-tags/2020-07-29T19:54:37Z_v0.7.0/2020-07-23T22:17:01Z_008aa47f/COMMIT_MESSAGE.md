commit 008aa47f2cd6a2a1eb25ddfc01cd3119f6a65d6e
Author: James Bebbington <jbebbington@google.com>
Date:   Fri Jul 24 08:17:01 2020 +1000

    Scrape system.disk.time on Windows (#1408)
    
    * Add more metrics to disk scraper for Windows
    
    * Remove disk avg operation time descriptor since this can be derived from delta(disk.time) / delta(disk.ops)
