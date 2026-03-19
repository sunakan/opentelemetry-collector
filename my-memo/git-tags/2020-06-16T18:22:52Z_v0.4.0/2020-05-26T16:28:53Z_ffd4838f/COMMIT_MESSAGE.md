commit ffd4838f371577eb3f576b567e4b547af6197b20
Author: Kevin Brockhoff <kbrockhoff@codekaizen.org>
Date:   Tue May 26 11:28:53 2020 -0500

    Generate "Golden Data" trace spans (#967)
    
    1. PICT tool input files for trace data and resulting output files from running pict from the command line. These are in `internal/goldendataset/testdata`. See: [Pairwise Independent Combinatorial Testing](https://github.com/microsoft/pict)
    2. Generator for fully-populated OLTP ResourceSpans from PICT output files.
    
    This has all the intended functionality for this PR. It has no impact on other functionality so there should be no problem in merging to master. I will follow up with other PRs to complete full "Golden Dataset" testing functionality.
    
    **Link to tracking Issue:** #652
    
    **Testing:** Unit tests exist for all functionality which has been coded so far
    
    **Documentation:** None yet. Will do so after golden dataset generation coding is complete.
