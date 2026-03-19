commit 3e3b2015ec2c5f9dbe5e1bd0fee5be65bf0ff5a5
Author: Jaana Dogan <jbd@amazon.com>
Date:   Fri Nov 13 06:02:36 2020 -0800

    Fix the scraper/discover manager coordination on the Prometheus receiver (#2089)
    
    * Fix the scraper/discover manager coordination on the Prometheus receiver
    
    The receiver contains various unnecessary sections. Rewriting the
    receiver's Start for better maintainability.
    
    Related to #1909.
    
    * Use the background context
    
    * Remove dead code
