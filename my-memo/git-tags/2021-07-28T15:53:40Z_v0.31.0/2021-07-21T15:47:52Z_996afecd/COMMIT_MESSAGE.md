commit 996afecdb237cd0a7907ad223ad9146d9cfc85e7
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Wed Jul 21 08:47:52 2021 -0700

    receiver/prometheus: add metricGroup.toDistributionPoint pdata conversion (#3667)
    
    Implements metricGroupPdata toDistributionPoint and added unit tests
    as well as equivalence tests to ensure the migration will render
    the same results.
    
    Updates #3137
    Updates PR #3427
