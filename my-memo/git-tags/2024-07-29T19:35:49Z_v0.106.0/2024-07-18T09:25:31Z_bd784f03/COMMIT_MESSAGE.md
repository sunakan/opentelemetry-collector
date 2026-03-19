commit bd784f03e26a478324175f72fe1e528bfb397d57
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Jul 18 11:25:31 2024 +0200

    Move receiver into an internal package, in preparation for profiles (#10530)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This splits the receiver package, so the APIs are in an internal
    package, and redefined publicly for logs/metrics/traces.
    In preparation for adding profiles to the package.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    See https://github.com/open-telemetry/opentelemetry-collector/pull/10375
    
    cc @mx-psi
