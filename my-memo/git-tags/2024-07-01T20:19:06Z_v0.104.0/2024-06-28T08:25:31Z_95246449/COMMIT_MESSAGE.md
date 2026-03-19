commit 9524644969edf1e0889688f6211ddc63becfef06
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri Jun 28 01:25:31 2024 -0700

    [confmap] Move confmap.unifyEnvVarExpansion to beta (#10435)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Moves confmap.unifyEnvVarExpansion to beta. This means the collector
    will, by default, use the env var provider to expand `${FOO}` synatx and
    will error if the expandconverter is used to expand `$FOO` syntax.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/10161
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/8215
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/7111
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
