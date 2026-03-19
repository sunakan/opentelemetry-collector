commit 92ab7df4c55848c82f0e4920c997e8d0813621f9
Author: Chao Weng <19381524+sincejune@users.noreply.github.com>
Date:   Thu Apr 3 03:30:11 2025 +0800

    [mdatagen] Support logs (#12659)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    ### Description
    This PR introduces the foundational changes necessary for supporting
    `logs` data in the `mdatagen` tool.
    
    #### mdatagen files for logs
    This update includes the generation of `generated_logs.go` and
    `generated_logs_test.go`. These files are specifically for receiver and
    scraper components that support `logs` data, enabling initial log
    handling capabilities.
    
    #### Introducing LogsBuilder
    This PR introduced a `LogsBuilder` similar to the existing
    `MetricsBuilder`. It provides a structured way to manage log data with
    the following functions:
    1. `Emit(...ResourceLogsOption)`
        Similar to `Emit` function in MetricsBuilder
    2. `EmitForResource(...ResourceLogsOption)`
        Similar to `EmitForResource` function in MetricsBuilder
    3. `AppendLogRecord(plog.LogRecord)`
    This function appends a log record to an internal buffer. The buffered
    log records are used to construct a `ScopeLog` when the `Emit()` or
    `EmitForResource()` functions are called. Scope name and version are
    automatically generated.
    
    #### Next steps
    * Add more test cases to LogsBuilder (e.g. reading test configs)
    * Add LogsBuilderConfig to read logs property in `metadata.yml` to send
    structured logs
    * Update receivers in contrib to use LogsBuilder.
    
    #### Example usage:
    ```
    lb := NewLogsBuilder(settings)
    
    res := pcommon.NewResource()
    res.Attributes().PutStr("region", "us-west-1")
    
    // append the first log record
    lr := plog.NewLogRecord()
    lr.SetTimestamp(pcommon.NewTimestampFromTime(time.Now()))
    lr.Attributes().PutStr("type", "log")
    lr.Body().SetStr("the first log record")
    
    // append the second log record
    lr2 := plog.NewLogRecord()
    lr2.SetTimestamp(pcommon.NewTimestampFromTime(time.Now()))
    lr2.Attributes().PutStr("type", "event")
    lr2.Body().SetStr("the second log record")
    
    lb.AppendLogRecord(lr)
    lb.AppendLogRecord(lr2)
    
    logs := lb.Emit(WithLogsResource(res))
    ```
    #### Example output:
    ```
    resourceLogs:
      - resource:
          attributes:
            - key: region
              value:
                stringValue: us-west-1
        scopeLogs:
          - logRecords:
              - attributes:
                  - key: type
                    value:
                      stringValue: log
                body:
                  stringValue: the first log record
                spanId: ""
                timeUnixNano: "1742291226022739000"
                traceId: ""
              - attributes:
                  - key: type
                    value:
                      stringValue: event
                body:
                  stringValue: the second log record
                spanId: ""
                timeUnixNano: "1742291226022739000"
                traceId: ""
            scope:
              name: github.com/open-telemetry/opentelemetry-collector-contrib/receiver/awscloudwatchreceiver
              version: latest
    ```
    
    <!-- Issue number if applicable -->
    ### Link to tracking issue
    Part of #12571
    
    <!--Describe what testing was performed and which tests were added.-->
    ### Testing
    Added
    
    <!--Describe the documentation added.-->
    ### Documentation
    Added
    
    <!--Please delete paragraphs that you did not use before submitting.-->
