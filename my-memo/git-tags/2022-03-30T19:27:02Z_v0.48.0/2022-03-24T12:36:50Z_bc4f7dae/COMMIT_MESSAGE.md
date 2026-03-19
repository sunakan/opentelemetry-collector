commit bc4f7daeac36ae063cadd2b8a96859593e7f8c75
Author: Alex Boten <aboten@lightstep.com>
Date:   Thu Mar 24 05:36:50 2022 -0700

    update proto to 0.15.0 (#5064)
    
    This includes changes to support optional types:
    - update sed script to update optional type to oneof
    - bump proto to 0.15.0
    - make genproto
    - update sum to OptionalType
    - InstrumentationLibraryMetrics -> ScopeMetrics
    - InstrumentationLibrarySpans -> ScopeSpans
    - InstrumentationLibraryLogs -> ScopeLogs
