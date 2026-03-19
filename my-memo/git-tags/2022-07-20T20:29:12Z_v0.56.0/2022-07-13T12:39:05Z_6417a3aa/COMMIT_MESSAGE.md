commit 6417a3aa16f2f1ce37159479fbd48ea8d34265c4
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Wed Jul 13 09:39:05 2022 -0300

    Change metadata lookup to be case insensitive (#5646)
    
    * Change metadata lookup to be case insensitive
    
    Before this change, users would make references to headers such as "authorization" and "X-CloudFront-Viewer-Latitude", which would potentially fail, as they would be stored in the context as "X-Cloudfront-Viewer-Latitude" or "Authorization".
    
    This PR changes this behavior, to attempt a case insensitive lookup to the backing map in case the key wasn't found under the requested casing. Under the assumption that the lookup key specified by users won't change, on a subsequent lookup, we proactively copy the value to the looked up key, to make the next lookup faster.
    
    Fixes #5610
    Fixes open-telemetry/opentelemetry-collector-contrib#8994
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Add changelog entry
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
