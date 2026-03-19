commit d5f5736ea20af14adcc87f7f00468c65fdd223f2
Author: JBD <jbd@golang.org>
Date:   Fri Jun 26 11:26:31 2020 -0700

    Don't export application telemetry (#1209)
    
    * Don't export application telemetry
    
    appTelemetryExporter is not an exported type and there is no way
    override the default telemetry. Unexport this variable until
    we decide to export the type or provide different implementations.
    
    * Fix godoc
