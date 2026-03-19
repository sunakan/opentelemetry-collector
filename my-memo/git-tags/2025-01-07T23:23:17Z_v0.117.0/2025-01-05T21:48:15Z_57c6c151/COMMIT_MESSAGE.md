commit 57c6c151279ee0b4988ac427feffbb2613926b22
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Sun Jan 5 13:48:15 2025 -0800

    [chore] Nit-fix exporter.request.MergeSplit() (#12016)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR fixes how `capacityLimit` is updated in
    `exporter.request.MergeSplit()`.
    
    Before
    ```
                    if srcReq.ld.LogRecordCount() <= capacityLeft {
                            if destReq == nil {
                                    destReq = srcReq
                            } else {
                                    srcReq.ld.ResourceLogs().MoveAndAppendTo(destReq.ld.ResourceLogs())
                            }
                            capacityLeft -= destReq.ld.LogRecordCount()
                            continue
                    }
    ```
    
    After
    
    ```
                    srcCount := srcReq.ld.LogRecordCount()
                    if srcCount <= capacityLeft {
                            if destReq == nil {
                                    destReq = srcReq
                            } else {
                                    srcReq.ld.ResourceLogs().MoveAndAppendTo(destReq.ld.ResourceLogs())
                            }
                            capacityLeft -= srcCount
                            continue
                    }
    ```
    
    With that said, the original implementation does not cause any bug
    because "the larger for loop" loops through only two items. In the first
    loop, `destReq` is guaranteed to be `nil`, so `capacityLeft` is updated
    properly. In the second loop, we jump out of the loop immediately so the
    accuracy of `capacityLeft` does not matter any more.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    NA
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    NA
    
    <!--Describe the documentation added.-->
    #### Documentation
    NA
    <!--Please delete paragraphs that you did not use before submitting.-->
