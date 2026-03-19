commit 471c4a6048a00296405d0bce6d655a9847be20a1
Author: Kevin Brockhoff <kbrockhoff@codekaizen.org>
Date:   Tue Sep 15 20:20:42 2020 -0500

    Add map and array attribute value type support (#1656)
    
    Map and array attribute value types which were recently added to the specification had not been implemented in the collector yet. This PR implements across all tracing receivers and exporters.
    
    **Link to tracking Issue:** #1590
    
    **Testing:** Added map and array attribute values to golden dataset. All unit and correctness tests continue to pass.
