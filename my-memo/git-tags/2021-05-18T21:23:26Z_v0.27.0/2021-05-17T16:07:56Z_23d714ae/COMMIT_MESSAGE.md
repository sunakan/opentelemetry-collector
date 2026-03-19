commit 23d714ae152fc9d4bf3fa4955ab8dac935e23d2e
Author: Jaana Dogan <jbd@amazon.com>
Date:   Mon May 17 09:07:56 2021 -0700

    Honor Prometheus external labels (#3127)
    
    * Honor Prometheus external labels
    
    Add external labels to every scraped sample in the Prometheus receiver if user has external labels configured.
    
    Fixes #2904.
    
    * Fix typo
    
    * Fix lint
