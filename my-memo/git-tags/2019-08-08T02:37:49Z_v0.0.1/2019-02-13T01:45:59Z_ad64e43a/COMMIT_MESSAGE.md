commit ad64e43a78ee7cef660e2494d13b9ec2c8753148
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Tue Feb 12 17:41:00 2019 -0800

    internal/config: fix nil OpenCensus receiver dereference
    
    An embarrasing non-defensive nil dereference if
      Config.Receivers.OpenCensus was nil
    
    then either of:
    * CanRunOpenCensusTraceReceiver
    * CanRunOpenCensusMetricsReceiver
    
    were invoked.
    
    Fixes #377
