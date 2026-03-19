commit b0de9a6fc4448fee10bd81dd973b922c6ce48195
Author: Piotr Kiełkowicz <pkiekowicz@splunk.com>
Date:   Fri Feb 14 13:58:09 2025 +0100

    [chore] Use public Linux ARM64 runners (#12389)
    
    #### Description
    
    Switches Linux ARM64 runners to the public version.
    
    #### Link to tracking issue
    Handles
    https://github.blog/changelog/2025-01-16-linux-arm64-hosted-runners-now-available-for-free-in-public-repositories-public-preview/
    
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    CI
    
    ## Notes
    
    Already done in .NET, .NET Auto and rust. It will allow to remove
    private runners from otel org and execute whole pipeline on public
    forks.
