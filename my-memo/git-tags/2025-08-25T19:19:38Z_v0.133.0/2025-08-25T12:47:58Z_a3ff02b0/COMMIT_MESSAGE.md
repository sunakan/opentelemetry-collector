commit a3ff02b009c28de9559fe8a8a85c7e67fc1c14a9
Author: Andrew Gizas <andreas.gkizas@elastic.co>
Date:   Mon Aug 25 15:47:58 2025 +0300

    Update receiverhelper for requests that failed to be received  (#12802)
    
    #### Description
    
    This is an ongoing work to add :
    - In the endOp function of
    [ObsReport](receiver/receiverhelper/obsreport.go), errors are classified
    as either:
    - Downstream errors (refused) - when internal.IsDownstreamError(err)
    returns true
       - Internal errors - when the error is not a downstream error
    - New metrics otelcol_receiver_internal_errors_spans,
    otelcol_receiver_internal_errors_metric_points and
    otelcol_receiver_internal_errors_log_records in case of inetrnal errors
    returned above
    - Support of otelcol_receiver_requests metric that will determines the
    outcome of the request:
        -  "success" if there's no error
        -   "refused" if there's a downstream error
        -  "failure" if there's an internal error
    
    #### Link to tracking issue
    Fixes #
    https://github.com/open-telemetry/opentelemetry-collector/issues/12207
    
    #### Testing
    
    Only added the integration tests.
    
    #### Documentation
    
    See updated
    [receiver/receiverhelper/documentation.md](receiver/receiverhelper/documentation.md)
    
    ---------
    
    Signed-off-by: Andreas Gkizas <andreas.gkizas@elastic.co>
    Co-authored-by: Jade Guiton <jade.guiton@datadoghq.com>
