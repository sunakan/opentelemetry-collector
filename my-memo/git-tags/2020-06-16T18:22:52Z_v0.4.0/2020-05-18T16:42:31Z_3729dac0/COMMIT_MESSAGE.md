commit 3729dac06f74b949417856853e8adfe64c4ce03b
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon May 18 09:42:31 2020 -0700

    Do not pass zeroed parent span id from OC receiver (#984)
    
    OpenCensus go instrumentation uses 8 bytes array internally https://github.com/census-instrumentation/opencensus-go/blob/master/trace/export.go#L76, and before exporting it in OC format it's converted to a slice https://github.com/census-ecosystem/opencensus-go-exporter-ocagent/blob/master/transform_spans.go#L44. As a result root spans are exported with ParentSpanID set to 8 byte slices with all zero values. This commit make the OC->Internal trace convertor to skip those values and align it with internal representation of a root span which supposed to have ParentSpanID set to nil value instead.
