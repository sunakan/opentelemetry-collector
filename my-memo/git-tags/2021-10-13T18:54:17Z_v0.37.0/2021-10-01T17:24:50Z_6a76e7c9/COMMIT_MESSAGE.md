commit 6a76e7c9510e0ee3efee16ccd03688d9b0dc9c71
Author: alrex <aboten@lightstep.com>
Date:   Fri Oct 1 10:24:50 2021 -0700

    add DataPointFlags to Number/Histogram/Summary datapoints  (#4081)
    
    * add DataPointFlags to Number/Histogram/Summary datapoints
    
    * rename DataPointFlags -> MetricDataPointFlags
    
    * add HasFlag + NewMetricDataPointFlags methods
    
    * cleanup
    
    * Update model/pdata/metrics.go
    
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
    
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
