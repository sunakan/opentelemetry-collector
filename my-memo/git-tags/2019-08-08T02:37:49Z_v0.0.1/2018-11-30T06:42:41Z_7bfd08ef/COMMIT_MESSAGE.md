commit 7bfd08ef6c759cde3146a943715f7306d0a7396b
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Tue Nov 27 16:04:12 2018 -0800

    cmd/ocagent: add OpenCensus Metrics receiver + noopMetricsSink
    
    For now before any OpenCensus Metrics exporter is created, just
    hook it up. This will allow applications such as the OpenCensus-PHP
    stats backend to send content.
    
    Fixes #216
