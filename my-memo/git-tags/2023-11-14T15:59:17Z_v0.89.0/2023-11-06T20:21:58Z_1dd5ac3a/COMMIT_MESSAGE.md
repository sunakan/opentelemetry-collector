commit 1dd5ac3a5f21a849cdcca086c8eb91fd55e4adff
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Nov 6 21:21:58 2023 +0100

    [featuregate] Deprecate NewFlag in favor of RegisterFlags (#8727)
    
    **Description:**
    
    Deprecate `featuregate.NewFlag` in favor of `Registry.RegisterFlags`,
    which registers flags into a provided flagset.
    
    The intent is to unblock future development of new features such as
    #7991 without incurring into deprecations or breaking changes to
    implement these.
    This will allow us to do a 1.0 release.
    
    **Link to tracking Issue:** Relates to #8220
