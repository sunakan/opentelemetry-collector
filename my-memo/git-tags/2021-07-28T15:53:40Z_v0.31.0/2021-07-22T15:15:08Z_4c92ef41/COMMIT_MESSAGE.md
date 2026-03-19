commit 4c92ef4135c4df4b0840a47f44ddf0f5ef8a218b
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Thu Jul 22 08:15:08 2021 -0700

    receiver/prometheus: add metricGroup.toNumberDataPoint pdata conversion (#3674)
    
    Implements metricGroupPdata toNumberDataPoint and added unit tests
    as well as equivalence tests to ensure the migration will render
    the same results.
    
    While here, added TODOs for issue #3691 which found a bug in
    which cumulative types weren't using the actual duration start
    timestamp. Given that this current change is a translation of prior
    logic and has parity checks, making that bug fix would complicate
    the PR.
    
    Updates #3137
    Depends on PR #3668
    Updates PR #3427
    Updates #3691
