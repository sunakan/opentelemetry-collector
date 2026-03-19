commit 2b7a90e6475b1a2865e26de22cd94959280b4e8e
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Mar 21 09:54:41 2022 -0700

    [pdata] Change outcome of Metric data accessors misuse (#5035)
    
    Change outcome of `pdata.Metric.<Gauge|Sum|Histogram|ExponentialHistogram>()` functions misuse. In case of type mismatch, they don't panic right away but return an invalid zero-initialized instance for consistency with other OneOf field accessors
