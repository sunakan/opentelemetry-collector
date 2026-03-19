commit 555389268f08f9b432562f0a89d78d7d92fa2fd7
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Jun 25 19:25:21 2019 -0400

    Add factory and new-style config for Batch processor (#53)
    
    This is part of remaining migration to new configuration format.
    
    - Added zap.Logger to ProcessorFactory functions because it is
    needed by this processor (and can be used if needed in other processors
    in the future).
    
    - Added Name/SetName to Processor interface because it is
    needed by this processor (this now also makes Processor uniform with
    Receiver and Exporter interfaces).
    
    Github issue: https://github.com/open-telemetry/opentelemetry-service/issues/52
    
    Testing done: make
