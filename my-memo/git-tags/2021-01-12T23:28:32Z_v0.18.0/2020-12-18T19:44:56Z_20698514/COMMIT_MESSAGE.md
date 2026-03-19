commit 2069851409f0726fca99bd40e0f624b92c18a6c7
Author: Azfaar Qureshi <azfaarq@amazon.com>
Date:   Fri Dec 18 14:44:56 2020 -0500

    Migrate CircleCI workflows to GitHub Actions (2/3) (#2298)
    
    * adding remaining CI workflows
    
    removing sleep from common.sh
    
    removing windows-msi
    
    updating expectd ram usage
    
    removing caching
    
    moving loadtestpre into setup environment
    
    using underscore for setup-environment instead
    
    adding collector binaries and fixing setup-pre job
    
    * using v1 instead
