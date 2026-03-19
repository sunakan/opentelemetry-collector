commit aa5bd1aecaab807cb2eaeec231745a42acc1fa86
Author: JBD <jbd@golang.org>
Date:   Fri Jun 29 12:24:14 2018 -0700

    Allow adding new exporter support easier (#10)
    
    Allow exporters to read the config themselves and return a
    stats, trace exporters and a closer themselves.
    
    Exporters should register themselves before Parse is invoked.
    Parse is going to generate all configured exporters and
    export to the configured exporters.
