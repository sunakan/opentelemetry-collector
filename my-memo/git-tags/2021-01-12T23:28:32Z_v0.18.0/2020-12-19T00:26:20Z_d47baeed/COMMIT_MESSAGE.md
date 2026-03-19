commit d47baeed1340ec4529f81196824d46da381abbd4
Author: Azfaar Qureshi <azfaarq@amazon.com>
Date:   Fri Dec 18 19:26:20 2020 -0500

    GitHub Actions Cache build-tools and change all upload/download actions to @v1 (#2308)
    
    * adding remaining CI workflows
    
    removing sleep from common.sh
    
    removing windows-msi
    
    updating expectd ram usage
    
    removing caching
    
    moving loadtestpre into setup environment
    
    using underscore for setup-environment instead
    
    adding collector binaries and fixing setup-pre job
    
    * GitHub Actions: only run make tools if cache hit
