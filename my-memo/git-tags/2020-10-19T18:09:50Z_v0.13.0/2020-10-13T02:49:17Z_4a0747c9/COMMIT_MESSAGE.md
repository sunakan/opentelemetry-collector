commit 4a0747c9b9b24422bbb1fd71ea2b9ee6380704ff
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Oct 12 19:49:17 2020 -0700

    Refactor metrics scraper to use interface for Scrapers (#1945)
    
    The main advantage is that entire functionality that can be added to the receiver can be encapsulated in one object,
    which means some scrapers can be consumed from external packages.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
