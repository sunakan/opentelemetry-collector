commit f9ffd7f16964d3080e851e2153d10058963fc24d
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Apr 3 08:30:37 2020 -0700

    Add OC -> Internal metrics translation (#763)
    
    Use it in otlpexporter and replace proto to proto translation with negligible overhead
    
    translator/internaldata/oc_to_resource.go is based on code taken from translator/internaldata/oc_to_trace.go, same applied to translator/internaldata/oc_to_resource_test.go.
