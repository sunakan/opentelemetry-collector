commit b04b551d7f38eb22fd2bf559eeb3ff2973a61f84
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Dec 19 19:18:33 2023 +0100

    [extension/ballastextension] Deprecate memory_ballast extension (#8803)
    
    **Description:**
    
    Based on user reports on
    open-telemetry/opentelemetry-helm-charts/issues/891 and the discussion
    on #8343, we can deprecate the memory ballast extension in favor of
    using `GOMEMLIMIT`. This PR:
    
    - Deprecates the memory ballast extension in the README
    - Removes references to the memory ballast extension on docs
    - Updates k8s example to use `GOMEMLIMIT` with the same approach as in
    the Helm chart (80% of memory limit)
    - Deprecates the memory ballast extension Go module
    
    Once this PR is accepted,
    open-telemetry/opentelemetry-helm-charts/issues/891 can move ahead with
    enabling `useGOMEMLIMIT` by default on the Helm chart.
    
    Other issues will be opened for opentelemetry.io, the Opentelemetry
    Operator and other parts of the OpenTelemetry project to remove
    references to this extension once the PR is merged.
    
    No explicit timeline is given for removal of the extension.
    
    **Link to tracking Issue:** Updates #8343
    
    ---------
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
