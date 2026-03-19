commit 5cd2421d8a50db1c78387fbe16e50ca8a9da54b7
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Jul 11 10:08:27 2024 -0700

    [exporterhelper] Deprecate the obsreport API (#10594)
    
    Deprecate the obsreport API in the exporterhelper package. The top-level
    helpers `exporterhelper.New[Metrics|Traces|Logs]Exporter` are supposed
    to be used instead.
    
    Resolves
    https://github.com/open-telemetry/opentelemetry-collector/issues/10592
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
