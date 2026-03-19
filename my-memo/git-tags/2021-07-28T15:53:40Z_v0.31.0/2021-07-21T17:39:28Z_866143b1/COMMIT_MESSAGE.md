commit 866143b1a71f1747f4d099f3571d08e2e2f6e2bb
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Wed Jul 21 10:39:28 2021 -0700

    receiver/prometheus: add metricGroup.toSummaryPoint pdata conversion (#3668)
    
    Implements metricGroupPdata toSummaryPoint and added unit tests
    as well as equivalence tests to ensure the migration will render
    the same results.
    
    Updates #3137
    Depends on PR #3667
    Updates PR #3427
