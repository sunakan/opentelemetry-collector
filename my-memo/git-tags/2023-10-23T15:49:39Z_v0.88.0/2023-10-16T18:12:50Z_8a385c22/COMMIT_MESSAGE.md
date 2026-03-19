commit 8a385c22e5f7e05d790cd992baafcb31ea42db9a
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Oct 16 11:12:50 2023 -0700

    [pdata] Enable the pdata mutation safeguards in the fanout consumers (#8634)
    
    This change enables the runtime assertions to catch unintentional pdata
    mutations in components claiming as non-mutating pdata. Without these
    assertions, runtime errors may still occur, but thrown by unrelated
    components, making it very difficult to troubleshoot.
    
    This required introducing extra API to get the pdata mutability state:
    - p[metric|trace|log].[Metrics|Traces|Logs].IsReadOnly()
    
    Resolves:
    https://github.com/open-telemetry/opentelemetry-collector/issues/6794
