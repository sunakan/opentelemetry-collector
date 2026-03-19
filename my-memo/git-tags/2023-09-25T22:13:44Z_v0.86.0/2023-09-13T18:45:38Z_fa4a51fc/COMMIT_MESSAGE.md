commit fa4a51fcad2ad4680966b80277b4bf2b3d0a9b27
Author: xu0o0 <hqcat6@gmail.com>
Date:   Thu Sep 14 02:45:38 2023 +0800

    [chore] fix race condition in test of configtls (#8437)
    
    **Description:**
    Data race occurs when the `testLoader.loadClientCAFile()` and
    `testLoader.returnErrorOnSubsequentCalls()` are called concurrently.
    
    **Link to tracking Issue:**
    fix #8395
