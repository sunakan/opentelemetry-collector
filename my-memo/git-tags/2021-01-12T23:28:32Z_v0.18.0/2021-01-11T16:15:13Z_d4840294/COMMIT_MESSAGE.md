commit d4840294d3301c88652dbd7f859762e3a9347b33
Author: Azfaar Qureshi <azfaar.qureshi@gmail.com>
Date:   Mon Jan 11 11:15:13 2021 -0500

    GitHub Actions - fixing flaky build package job (#2324)
    
    * fixing flaky deb package job
    
    * using waitgroup instead of sleep
    
    * moving wait in the same line as docker cp
    
    Co-authored-by: Azfaar Qureshi <azfaarq@amazon.com>
