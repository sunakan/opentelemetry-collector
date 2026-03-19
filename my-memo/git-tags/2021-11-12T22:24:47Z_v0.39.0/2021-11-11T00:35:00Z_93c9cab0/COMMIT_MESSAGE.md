commit 93c9cab0a909b59c2365282c9d422c63af1ab1ba
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Nov 10 16:35:00 2021 -0800

    Extract configuration wathcing is a separate struct (#4370)
    
    * Fix race condition in Collector where multiple goroutines were updating the Collector.service;
    * Correctly close the RetrievedWatchable values;
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
