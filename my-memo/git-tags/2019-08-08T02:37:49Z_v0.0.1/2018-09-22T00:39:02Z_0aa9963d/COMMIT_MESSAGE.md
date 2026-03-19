commit 0aa9963d5d800f49392bcbd5426400e63fba9a63
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Fri Sep 21 12:30:38 2018 -0700

    vendor: remove vendoring by dep
    
    Firstly removing vendor/ and dep
    which will be followed up by a change
    switching to using modules. For now
    this change enables Travis CI to build.
    Could have actually just updated dependencies
    using dep but that'd be an extra change and
    we are already revamping this repository.
    
    Also while here fix Stackdriver import path:
    This is necessary to change to be bundled with removing
    dep so that Travis CI can build as the Stackdriver
    exporter was migrated to:
        "contrib.go.opencensus.io/exporter/stackdriver"
    
    Updates #33
