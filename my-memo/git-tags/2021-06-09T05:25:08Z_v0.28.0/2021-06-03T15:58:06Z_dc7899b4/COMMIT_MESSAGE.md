commit dc7899b4020e650df8bf090fba1ab568baff69bb
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Jun 3 08:58:06 2021 -0700

    Add telemetry for dropped data due to exporter sending queue overflow (#3328)
    
    * Add telemetry for dropped data due to exporter sending queue overflow
    
    This change adds internal metrics for dropped spans, metric points and log records when exporter sending queue is full:
    - exporter/enqueue_failed_metric_points
    - exporter/enqueue_failed_spans
    - exporter/enqueue_failed_log_records
    
    * Make report*EnqueueFailure methods private
    
    By moving them to the package where they are being used. It requires some code duplication
