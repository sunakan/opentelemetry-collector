commit e13dd5b1af17943819c17a17d2481ccf05d3e3f6
Author: William Dumont <william.dumont@grafana.com>
Date:   Thu Nov 16 18:00:48 2023 +0100

    Add ZeroThreshold field to exponentialHistogramDataPoint in pmetric package (#8769)
    
    **Description:** Add ZeroThreshold field to
    exponentialHistogramDataPoint in pmetric package. It's needed to
    understand which values fall in the ZeroBucket
    
    
    Fixes #8802
