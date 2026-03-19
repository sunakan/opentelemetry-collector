commit 3364ba111a1f89ac3d4e97eaef35d160c69f23ad
Author: Andrzej Stencel <astencel@sumologic.com>
Date:   Mon Jun 24 10:49:59 2024 +0200

    [exporter/debug] format spans as one-liners in `normal` verbosity (#10280)
    
    #### Description
    
    This is an initial barebones implementation that only outputs the span's
    name, trace ID and span ID. Other useful fields like duration etc. can
    be added in follow-up enhancements.
    
    This pull request is part of
    https://github.com/open-telemetry/opentelemetry-collector/issues/7806;
    it implements the change for traces. The changes for
    [logs](https://github.com/open-telemetry/opentelemetry-collector/pull/10225)
    and metrics will be proposed in separate pull requests.
    
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
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
