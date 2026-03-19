commit 7f957ed3d9e7ae3b0b7c983a1ad92e6f2ba816b8
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Tue Jun 24 10:45:42 2025 -0400

    [chore] use pseudoversions for xpdata (#13251)
    
    #### Description
    use pseudoversions for xpdata similar to
    https://github.com/open-telemetry/opentelemetry-collector/pull/13162
    v0.0.0-00010101000000-000000000000 does not exist and fails the
    `update-otel` workflow in contrib
    
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/40839
