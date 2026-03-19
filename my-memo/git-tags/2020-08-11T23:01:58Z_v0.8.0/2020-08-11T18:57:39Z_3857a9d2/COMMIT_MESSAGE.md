commit 3857a9d2da9b3d777e9eca68242919431df63c98
Author: Kevin Brockhoff <kbrockhoff@codekaizen.org>
Date:   Tue Aug 11 13:57:39 2020 -0500

    Convert Zipkin receiver and exporter to use OTLP and fix translation bugs (#1446)
    
    * fixed all Jaeger translation diffs from correctness tests
    
    * fixed Jaeger translations where Resource is missing or empty
    
    * improve test coverage
    
    * initial dev of otlp to zipkin translation
    
    * initial dev of otlp to zipkin translation
    
    * initial dev of zipkin v2 to otlp translation
    
    * initial dev of zipkin v2 to otlp translation
    
    * initial dev of zipkin v2 to otlp translation
    
    * initial dev of zipkin v2 to otlp translation
    
    * initial dev of zipkin v1 to otlp translation
    
    * change zipkin receiver and exporter to use internal traces
    
    * improve event/annotation translations
    
    * fix broken zipkin tests
    
    * convert zipken receiver/exporter to new factory signature
    
    * fixed receiver config
    
    * add code from master
    
    * fix broken test
    
    * fix PR requested changes
    
    * translation fixes
    
    * improve perf
    
    * added more test coverage
    
    * changed timestamp validations to only check to nearest millisecond
    
    * fix new lint issues and PR comments
    
    * improve timestamp validation
    
    * improve timestamp validation
    
    * fix missed timestamp validation
    
    * added missing goldendata examples
    
    * fix generator tests
    
    * fix PR comments
    
    * improve test coverage
