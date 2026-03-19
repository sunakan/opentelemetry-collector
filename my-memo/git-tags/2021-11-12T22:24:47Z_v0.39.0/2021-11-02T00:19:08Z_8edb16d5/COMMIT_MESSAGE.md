commit 8edb16d54bce660d89544a0bc145b8d105276808
Author: Alex Boten <aboten@lightstep.com>
Date:   Mon Nov 1 17:19:08 2021 -0700

    Update Check* functions to support TestTelemetry (#4283)
    
    The following change updates various obsreporttest methods to support TestTelemetry:
    * CheckExporterMetrics, CheckExporterTraces, CheckExporterLogs
    * CheckProcessorTraces, CheckProcessorMetrics, CheckProcessorLogs
    * CheckReceiverLogs, CheckReceiverTraces, CheckReceiverMetrics
    * CheckScraperMetrics
