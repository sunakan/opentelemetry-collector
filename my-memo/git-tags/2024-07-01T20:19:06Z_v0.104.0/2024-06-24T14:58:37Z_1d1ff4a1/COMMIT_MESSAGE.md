commit 1d1ff4a16cb9a1e7890febb37a595a3030dd77b3
Author: Andrzej Stencel <astencel@sumologic.com>
Date:   Mon Jun 24 16:58:37 2024 +0200

    [exporter/debug] format metric data points as one-liners in `normal` verbosity (#10462)
    
    #### Description
    
    This pull request is part of
    https://github.com/open-telemetry/opentelemetry-collector/issues/7806;
    it implements the change for metrics. The changes for
    [logs](https://github.com/open-telemetry/opentelemetry-collector/pull/10225)
    and
    [traces](https://github.com/open-telemetry/opentelemetry-collector/pull/10280)
    have been proposed in separate pull requests.
    
    This change applies to the Debug exporter only. The behavior of the
    Logging exporter remains unchanged. To use this behavior, switch from
    the deprecated Logging exporter to Debug exporter.
    
    #### Link to tracking issue
    
    - https://github.com/open-telemetry/opentelemetry-collector/issues/7806
    
    #### Testing
    
    Added unit tests for the formatter.
    
    #### Documentation
    
    Described the formatting in the Debug exporter's README.
