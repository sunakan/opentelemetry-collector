commit f9d44de9b6360683aa1009d47aff5ae8ccd51b74
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Thu Oct 3 03:47:39 2024 -0600

    [exporter/logging] Remove logging exporter (#11037)
    
    #### Description
    
    It is September, which means we get to remove this deprecated component.
    
    - The helm chart was updated to exclude the logging exporter already:
    https://github.com/open-telemetry/opentelemetry-helm-charts/blob/main/charts/opentelemetry-collector/UPGRADING.md#0840-to-0850.
    - The Operator references have been updated:
    https://github.com/open-telemetry/opentelemetry-operator/pull/3259.
    - Opentelemetry.io site final references to update:
    https://github.com/open-telemetry/opentelemetry.io/pull/5143
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/7769
