commit e5d4463ed8f84f98fe26a69ebee0ecb87a6db059
Author: Zhihao Chen <chenzhihao@users.noreply.github.com>
Date:   Fri Sep 18 01:44:28 2020 +1000

    add public functions to export pdata to ExportXServicesRequest Protobuf bytes (#1741)
    
    Add the public functions to export internal pipeline data to otlp `ExportLogsServiceRequest`, `ExportMetricsServiceRequest`, `ExportTraceServiceRequest`.
    
    The intention for this feature is to add a way to export the internal data to protbuf bytes without exposing the internal protobuf generated data structure. Thus the user can send this otlp data over HTTP.
    
    
    **Link to tracking Issue:**
    #1719
    
    **Testing:**
    Unit test added.
