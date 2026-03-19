commit c6b5e77f06f6d98091490927276111806a8682eb
Author: Sean Marciniak <30928402+MovieStoreGuy@users.noreply.github.com>
Date:   Wed Jun 21 07:18:12 2023 +0930

    [scraper helper] Include support for timeout (#7703)
    
    **Description:**
    This introduces a change that each scraper context is cancelled by the
    next collection period.
    
    **Link to tracking Issue:**
    NA
    
    **Testing:**
    It requires integration tests against both core and contrib.
    
    **Documentation:**
    Add comments to the collection interval to explain usage.
    
    
    **Alternative**
    
    I had considered adding a new field named `Timeout` which would require
    to be equal or less than collection interval.
    However, since a lot of scrapers already have adopted a timeout fields,
    I worry about potential conflicts so I opted for this approach.
