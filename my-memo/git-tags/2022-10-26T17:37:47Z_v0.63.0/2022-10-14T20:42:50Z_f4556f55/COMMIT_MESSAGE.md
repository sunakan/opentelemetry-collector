commit f4556f55c1190cd477fee2f53222f33442864ffd
Author: Gustavo Paiva <guustavo.paiva@gmail.com>
Date:   Fri Oct 14 17:42:50 2022 -0300

    Use the same  prometheus registry for both oc and otel exporters (#6297)
    
    * share prometheus registry between oc and otel exporters
    
    * add tests
    
    * wording
    
    * more wording
    
    * add chloggen entry
    
    * assert return of view.Register
    
    * change tests to be unit tests
    
    * formats and adds todo
    
    * run gofmt
    
    * only starts http server if there is not error, go fmt again
    
    * reverts otel-config changes
    
    * fix opencensus flaky tests
    
    * use `view.RetrieveData()` to force collection
    
    * Update service/telemetry_test.go
    
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
    
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
