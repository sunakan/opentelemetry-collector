commit 35ed81cbd46e4794628235c437113ec1e4e470ed
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Wed Aug 7 19:35:27 2019 -0700

    Relocate a few internal/collector/* packages (#238)
    
    * Move package sampling to processor/tailsampling
    
    * Move idbatcher to processor/tailsampling
    
    * Move internal/collector/processor/metrics to processor/
    
    Also remove empty internal/collector/processor/ package.
