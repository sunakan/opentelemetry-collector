commit a07e6c3e1038ee3685676c3cd9b63ac68d252d53
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Jul 18 11:26:13 2024 +0200

    Move exporter into an internal package, in preparation for profiles (#10527)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This splits the exporter package, so the APIs are in an internal
    package, and redefined publicly for logs/metrics/traces.
    In preparation for adding profiles to the package.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    See https://github.com/open-telemetry/opentelemetry-collector/pull/10375
    
    cc @mx-psi
