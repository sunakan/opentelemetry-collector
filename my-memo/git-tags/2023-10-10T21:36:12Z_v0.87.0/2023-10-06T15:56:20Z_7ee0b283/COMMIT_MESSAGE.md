commit 7ee0b28302cfa720ef2e89b3bf34d7dff4fd5600
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Oct 6 08:56:20 2023 -0700

    [pdata] Introduce runtime safeguards to catch incorrect pdata mutations (#8494)
    
    This change introduces an option to enable runtime assertions to catch
    unintentional pdata mutations in components that are claimed as
    non-mutating pdata. Without these assertions, runtime errors may still
    occur, but thrown by unrelated components, making it very difficult to
    troubleshoot.
    
    For now, this doesn't change the default behavior. It just introduces a
    new method on `[Metrics/Traces|Logs].Shared()` that returns pdata marked
    as shared. The method will be applied to fan-out consumers in the next
    PR.
    
    Later, if we want to remove the need of `MutatesData` capability, we can
    introduce another method `[Metrics/Traces|Logs].Exclusive()` which
    returns a copy of the pdata if it's shared.
    
    This change unblocks the 1.0 release by implementing the original
    solution proposed by @bogdandrutu in
    https://github.com/open-telemetry/opentelemetry-collector/issues/6794.
    Going forward, we may introduce a copy-on-write solution that doesn't
    require the runtime assertions. That will likely be part of the 2.0
    release.
