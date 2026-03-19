commit 7ff2465190e49fa92dccac71a6bf43b4fbc439ad
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Fri May 30 21:13:14 2025 +0200

    [componentattribute] Use otelzap.WithAttributes, remove LoggerProviderWithAttributes (#13108)
    
    #### Description
    
    Now that `otelzap` has been bumped up to 0.11.0 (#13103), this PR
    follows up on a TODO comment to use
    https://github.com/open-telemetry/opentelemetry-go-contrib/pull/6962 to
    set instrumentation scope attributes on the Logger created by otelzap,
    instead of a workaround (`LoggerProviderWithAttributes`).
    
    This is an internal change, and the new code should be functionally
    equivalent, so I don't think this needs a changelog.
    
    #### Testing
    
    I believe this is already covered by existing tests.
