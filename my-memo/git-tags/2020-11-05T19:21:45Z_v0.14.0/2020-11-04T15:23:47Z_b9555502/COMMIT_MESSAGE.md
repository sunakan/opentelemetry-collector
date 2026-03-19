commit b9555502b055960cb9c8b54118f1701d0dba1237
Author: Dominik Rosiek <58699848+sumo-drosiek@users.noreply.github.com>
Date:   Wed Nov 4 16:23:47 2020 +0100

    Add support of partial requests for logs and metrics to the exporterhelper (#2059)
    
    * Add logs support to PartialError
    
    * Add metrics support to PartialError
    
    * Add test for logs support to PartialError
    
    * Add test for metrics support to PartialError
    
    * Implement onPartialError for logs exporter helper
    
    * Add tests for onPartialError for logs exporter helper
    
    * Implement onPartialError for metrics exporter helper
    
    * Add tests for onPartialError for metrics exporter helper
