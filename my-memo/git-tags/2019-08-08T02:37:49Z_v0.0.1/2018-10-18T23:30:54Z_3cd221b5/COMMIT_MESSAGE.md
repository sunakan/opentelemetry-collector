commit 3cd221b57e85cec151d46ada6076a29f12c3d001
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Thu Oct 18 16:30:51 2018 -0700

    interceptor/opencensus: remove redundant OCInterceptor prefix
    
    Given that the package name is already ocinterceptor, using
    OCInterceptor as a prefix for the type name is now unnecessary.
    That naming was because the package was one of the first ones
    to be added. Now that the packaging is mature this has come up
    as a better suggestion to remove that unnecessary prefix.
    
    Fixes #88
