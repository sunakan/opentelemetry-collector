commit 9549a14a31a1791a8f6fb76acd88298a33252af4
Author: Alex Boten <aboten@lightstep.com>
Date:   Wed Sep 20 16:51:35 2023 -0700

    deprecate processor API in obsreport (#8496)
    
    These deprecated methods/structs have been moved to processorhelper:
    - `obsreport.BuildProcessorCustomMetricName` ->
    `processorhelper.BuildCustomMetricName`
      - `obsreport.Processor` -> `processorhelper.ObsReport`
      - `obsreport.ProcessorSettings` -> `processorhelper.ObsReportSettings`
      - `obsreport.NewProcessor` -> `processorhelper.NewObsReport`
    
    Same as the change for the exporter, no functional changes just moving
    code over to the
    new location.
    
    ~Follows
    https://github.com/open-telemetry/opentelemetry-collector/pull/8493~
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
