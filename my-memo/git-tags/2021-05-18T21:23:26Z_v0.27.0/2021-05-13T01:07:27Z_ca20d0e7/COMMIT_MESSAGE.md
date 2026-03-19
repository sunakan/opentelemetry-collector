commit ca20d0e70a3093907026b0e6790626a6f4953a35
Author: Jaana Dogan <108380+rakyll@users.noreply.github.com>
Date:   Wed May 12 18:07:27 2021 -0700

    Remove Java-like concrete type naming (#3160)
    
    In Go, we tend to not to name concrete types with prefixes like *Imp or *Impl like in Java. Renaming exporterImp to exporter.
