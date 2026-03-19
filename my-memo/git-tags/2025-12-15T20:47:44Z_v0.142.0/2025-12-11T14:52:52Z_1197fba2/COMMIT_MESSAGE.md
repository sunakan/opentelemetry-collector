commit 1197fba24e7aab61b0e8f095fc37cfe11ebb401d
Author: Keagan Peet <nobrac34@gmail.com>
Date:   Thu Dec 11 09:52:52 2025 -0500

    [exporter/debug] feat: add dropped* attributes to output (#14217)
    
    #### Description
    Added logging output for:
    - DroppedAttributesCount
    - DroppedEventsCount
    - DroppedLinksCount
    
    #### Link to tracking issue
    Fixes #14202
    
    #### Testing
    Added validation output to `two_spans.out` and
    `traces_with_entity_refs.out`
    
    #### Documentation
    Added changelog yaml entry summarizing the issue and fix.
