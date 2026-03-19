commit 765e4a54176e2e1527e8e1e5638e417a616a64cd
Author: Damien Mathieu <42@dmathieu.com>
Date:   Fri Feb 7 10:11:57 2025 +0100

    Add pprofile aggregation temporality constants (#12253)
    
    This adds constants to more easily use the aggregation temporality enum
    in pprofile.
    
    This behavior is very similar to how pmetrics handles those constants.
    See
    https://pkg.go.dev/go.opentelemetry.io/collector/pdata/pmetric#pkg-constants
    
    cc @rockdaboot
