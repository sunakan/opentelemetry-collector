commit 8e51c02a66612c24af819121dd4f14584aabe0c8
Author: Paulo Janotti <paulo@omnition.io>
Date:   Fri Dec 28 08:17:23 2018 -0800

    Add basic telemetry to collector (#284)
    
    * Add basic telemetry to collector
    
    This change adds a Prometheus endpoint using OC to provide metrics
    to the collector. There are settings to control the level and port
    in which the metrics are exposed. The main metrics added for now
    are in the queued exporters.
    
    * Check for view registration errors
    
    * PR Feedback
