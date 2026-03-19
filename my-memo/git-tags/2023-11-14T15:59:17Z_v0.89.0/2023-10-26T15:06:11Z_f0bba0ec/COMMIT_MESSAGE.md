commit f0bba0ec3521fb726b17137d1c5672566aeb79f5
Author: Alex Boten <aboten@lightstep.com>
Date:   Thu Oct 26 08:06:11 2023 -0700

    [exporterhelper] fix bug with queue size and capacity metrics (#8716)
    
    This change ensures the queue_size and queue_capacity metrics are
    available when using OpenTelemetry for the collector's internal metrics.
    
    Fixes #8682
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
