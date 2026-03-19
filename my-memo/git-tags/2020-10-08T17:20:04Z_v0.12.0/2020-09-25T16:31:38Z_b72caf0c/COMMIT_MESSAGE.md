commit b72caf0c2b338d486f2fe390fa8fc372a0d8a04f
Author: Ben Keith <benkeith@splunk.com>
Date:   Fri Sep 25 12:31:38 2020 -0400

    Queued Retry Helper: Fix Flaky Test (#1862)
    
    The mock send is asynchronous so there is no guarantee that the request
    count will be 1 at the point when it is asserted to be so in the test.
    
    This has lead to flaky tests so do an Eventually to repeatedly check it for
    a full second to make the test more robust.
