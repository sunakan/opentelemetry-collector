commit 3dad181148bdda41bcba2a3f655e7bcc73ee2ccf
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Aug 21 14:45:59 2023 -0700

    [exporterhelper] Add observability to the new exporter helper (#8244)
    
    This change adds collector's internal metrics and tracing to the new
    request-based exporter helpers. Only those metrics and traces are added
    that are already adopted by the existing exporter helpers for backward
    compatibility. The new exporter helpers can and should expose more
    metrics in the future, e.g. for tracking converter errors.
    
    Tracking Issue:
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
