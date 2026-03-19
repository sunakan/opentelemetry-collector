commit 66d7acdc5a697c7be777cff9f83302fd066c7c7e
Author: James Bebbington <jbebbington@google.com>
Date:   Thu May 14 14:08:45 2020 +1000

    Simplify the host metrics ticker logic (#952)
    
    * Optimise the host metrics ticker logic by having one ticker per set of scrapers that use the same collection interval, and update tests
    
    * Removed the ability to configure different collection intervals for different scrapers within the host metrics receiver & added documentation to note that the same effect can be achieved by configuring multiple receivers
    
    * Change the Host Metrics scrapers from "ScrapeAndAppend" to "Scrape" and do the appending in the receiver instead
