commit d69b4799e8c1fc94047f4386e099b8614fa72057
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Tue Jun 8 23:34:26 2021 +0300

    receiver/prometheus/internal: direct metricfamily Prometheus->OTLP + equivalent tests (#3145)
    
    Adds direct metricfamily Prometheus->OTLP conversion as well as equivalence tests.
    After this change, there will be 2 other changes coming up and then finally we'll be able
    to remove the dependency of OpenCensus in the Prometheus receiver.
    
    Updates #3137
