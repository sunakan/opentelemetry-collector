commit 26a1aed9c04b256ab06277246f5b42deddb0036c
Author: Lee sungju <lsj4401@naver.com>
Date:   Thu Jul 3 20:50:36 2025 +0900

    [exporterhelper] Fix metric name preservation during request splitting (#13238)
    
    #### Description
    This PR fixes an issue in exporter/exporterhelper's sending_queue where
    metric names were lost during metricRequest splitting. Previously, when
    large batches of metrics were processed, the splitting logic in
    metric_batch.go could cause the name field of some metrics to disappear.
    This fix ensures that all metric fields are properly preserved when
    metricRequest objects are split.
    
    #### Link to tracking issue
    Fixes #13236
    
    ---------
    
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
