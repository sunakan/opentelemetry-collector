commit 642a8e0c9703148391a078a61a8208d2d9400ccb
Author: alrex <aboten@lightstep.com>
Date:   Thu Jul 8 10:34:40 2021 -0700

    update OTLP to v0.8.0 (#3572)
    
    * update proto to v0.8.0
    
    * regenerate protos using 0.8.0
    
    * update uses of DoubleGauge, DoubleSum, DoubleHistogram, DoubleSummary, DoubleDataPoint, DoubleHistogramDataPoint, DoubleSummaryDataPoint, DoubleExemplar
    
    * update ExemplarSlice to use []*otlpmetrics.Exemplar
    
    * suppress deprecation warnings for metrics
    
    * update pdatagen generator code to support AsDouble fields
    
    * run make genpdata
