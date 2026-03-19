commit e3604d98201729b8ecb98b2d736cf5f63c470f92
Author: JBD <jbd@golang.org>
Date:   Thu Jun 7 15:42:37 2018 -0700

    Initial commit of the exporter daemon and its Go exporter (#1)
    
    This commit contains an initial prototype for the exporter daemon
    that can discovered via and endpoint file on the host.
    
    The exporter looks for the endpoint file to see the availability
    of the daemon and exports if it is running.
    
    Exporter daemon will allow OpenCensus users to export
    without having to link a vendor-specific exporter in their final
    binaries. We are expecting the prototype exporter is going to
    be implemented in every language and registered by default.
    
    Updates https://github.com/census-instrumentation/opencensus-specs/issues/72.
