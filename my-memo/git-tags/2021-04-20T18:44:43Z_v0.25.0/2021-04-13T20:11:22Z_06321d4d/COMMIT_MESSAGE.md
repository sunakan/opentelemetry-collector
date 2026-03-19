commit 06321d4d050d389403398b67c2c59e29ca31c359
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Tue Apr 13 13:11:22 2021 -0700

    exporter/prometheus: replace Quantile proto comparisons by map (#2924)
    
    Previously we were plainly comparing slices of proto Quantile values,
    but there were flakes due to ordering and some random extra values.
    
    This change just extracts those quantile values into a
    map[float64]float64 for direct comparisons.
    
    Fixes #2922
