commit 9861e0a775a010f799df0d044b67b8869f26883b
Author: Antoine Toulme <atoulme@splunk.com>
Date:   Fri Feb 28 07:26:35 2025 -0800

    [chore] make contrib tests more efficient (#12490)
    
    Instead of having each test group edit modules, tidy and generate, do it
    once and share the output in each subtest to save 5 minutes per branch.
