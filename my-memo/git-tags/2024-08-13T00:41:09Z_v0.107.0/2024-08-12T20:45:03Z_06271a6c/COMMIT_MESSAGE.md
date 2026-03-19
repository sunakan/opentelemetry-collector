commit 06271a6c50c0cd19e4137d5d3a037443abc3a24c
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Aug 12 13:45:03 2024 -0700

    Fix processor metrics not being reported initially with 0 values (#10857)
    
    This change reverts
    https://github.com/open-telemetry/opentelemetry-collector/pull/10693,
    which had an unintentional behavior change that made the processor
    helper report metrics only if they got values other than `0`.
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10855
