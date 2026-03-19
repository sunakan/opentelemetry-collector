commit 426e660499d7bd331f66bb3336daf1932b8a8e4a
Author: Andrzej Stencel <astencel@sumologic.com>
Date:   Fri Jun 21 09:32:05 2024 +0200

    [exporter/debug] format log records as one-liners in `normal` verbosity (#10225)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Changes the behavior of `normal` verbosity of the Debug exporter for
    logs to display each log record in one line of text.
    
    Note that if the body of the log record contains newlines, the output
    will be displayed in multiple lines.
    
    This pull request is part of
    https://github.com/open-telemetry/opentelemetry-collector/issues/7806;
    it implements the change for logs. The changes for metrics and
    [traces](https://github.com/open-telemetry/opentelemetry-collector/pull/10280)
    will be proposed in separate pull requests.
    
    The implementation in this pull request does not display any details on
    the resource or the scope of the logs. I would like to propose
    displaying the resource and the scope as separate lines in a separate
    pull request.
    
    This change applies to the Debug exporter only. The behavior of the
    Logging exporter remains unchanged. To use this behavior, switch from
    the deprecated Logging exporter to Debug exporter.
    
    #### Link to tracking issue
    
    - https://github.com/open-telemetry/opentelemetry-collector/issues/7806
    
    #### Testing
    
    Added unit tests for the formatter.
    
    #### Documentation
    
    Described the formatting in the Debug exporter's README.
    
    ---------
    
    Co-authored-by: Roger Coll <roger.coll@elastic.co>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
