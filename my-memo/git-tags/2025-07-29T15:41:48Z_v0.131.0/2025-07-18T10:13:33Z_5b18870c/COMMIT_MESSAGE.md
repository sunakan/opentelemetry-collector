commit 5b18870ccc9b1f45eb352ebd05072a299c552e7e
Author: Andrew Wilkins <axw@elastic.co>
Date:   Fri Jul 18 18:13:33 2025 +0800

    [chore] service: refactor logger wrapping (#13329)
    
    #### Description
    
    There are two main changes here:
    - We move the componentattribute logger core wrapping and Logger to
    LoggerProvider tee'ing to the service package. This will enable the
    wrapping to be performed independently of the implementation of
    telemetry providers.
    - We move away from using zapcore.NewTeeCore, and introduce a new
    zapcore.Core implementation that only copies log entries accepted by the
    native Zap core to the OTel LoggerProvider.
    
    The second change is necessary due to the first: because the
    LoggerProvider will in the future be injectable, and because the
    telemetry configuration will be opaque to the service package, we must
    always tee the logs from the zap logger to the LoggerProvider. When
    using zapcore.NewTeeCore, the resulting core will duplicate all entries
    to all cores - which is not what we want.
    
    There's also some light refactoring of tests, and the service package
    tests are now ~30s faster by replacing a sleep with assert.Eventually.
    
    #### Link to tracking issue
    
    Preparation work for
    https://github.com/open-telemetry/opentelemetry-collector/issues/4970
    
    #### Testing
    
    Unit tests pass
    
    #### Documentation
    
    N/A
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
