commit 86437e9ee6106dd399cad7b7ba4e7391ad68c36f
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Mon Oct 15 23:53:12 2018 -0700

    all: move exporterparser out of cmd/ocagent
    
    Moved exporterparser code out of:
        cmd/ocagent/exporterparser
    and into
        exporter/exporterparser
    
    because:
    a) Makes it easier to test and verify behavior
    b) Makes it easier to instrument the various exporters
    c) We shouldn't be adding sub-packages in cmd/ocagent
    which produces the binary itself
    
    Also changed all the currently available exporters
    to return []exporter.TraceExporter since multiple configurations
    could be given for an exporter e.g. with Datadog or Stackdriver
    
    Fixes #92
