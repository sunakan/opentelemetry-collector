commit 831d805e2d8e132869b8f593ee4ff5503dc8ffba
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Wed Jul 31 23:29:20 2019 +0530

    Refactor opencensus exporter to make it easily extensible (#212)
    
    Refactored oc exporter code to make it easier to import in derived
    builds without copying all the code.
    
    Example derived exporter: https://github.com/owais/example-derived-oc-exporter
    
    - Moved internal/compression to root
    - Split opencensusexporter factory's `CreateTraceExporter` method into
      - `OCAgentOptions` and `CreateOCAgent`
