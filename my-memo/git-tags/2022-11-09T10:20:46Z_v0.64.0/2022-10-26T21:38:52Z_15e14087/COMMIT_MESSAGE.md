commit 15e140874b05797fc73e26c8aa4da1a37939011a
Author: Gustavo Paiva <gustavo@lightstep.com>
Date:   Wed Oct 26 18:38:52 2022 -0300

    Add tests to the obsreport.Receiver component helper when using otel instrumentation (#6371)
    
    * add tests for obsreport.Receiver when otel is enabled
    
    * transport tag is always added, even when empty
    
    * remove todo
    
    * handle error from otel prometheus exporter
