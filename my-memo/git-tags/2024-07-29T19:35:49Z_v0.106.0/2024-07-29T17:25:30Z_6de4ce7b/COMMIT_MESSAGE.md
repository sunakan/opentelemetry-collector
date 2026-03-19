commit 6de4ce7b4799f78d57f9e8e64d30ae6b53d22c69
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Mon Jul 29 13:25:30 2024 -0400

    [chore] skip stable module check if unset (#10734)
    
    From
    https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/release.md#releasing-opentelemetry-collector:
    
    > If not intending to release stable modules, do not specify a version
    for Release candidate version stable.
    
    `validate-versions` workflow fails on empty version right now, it should
    instead skip if stable module candidate version is empty.
