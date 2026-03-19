commit aeaee36320c4a1c556365151ab87be31e4c0b1d7
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Wed Aug 7 07:08:16 2019 -0700

    Support metrics exporter with oc exporter config (#232)
    
    * Support metrics exporter with oc exporter config
    
    Also remove outdated v1 configs and fix tests.
    
    Updates #231.
    
    * Fix static check
    
    * Add documentation
    
    * Send proto metrics with ExportMetricsServiceRequest()
    
    Fixes #231.
    
    * Remove config TOC
    
    * Add document to config.go
