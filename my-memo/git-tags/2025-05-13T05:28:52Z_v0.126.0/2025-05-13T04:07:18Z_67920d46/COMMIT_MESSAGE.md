commit 67920d4681ca593b334a0a01dab646e67ece99d9
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Mon May 12 21:07:18 2025 -0700

    [chore] update go patch version in cmd/otelcorecol and github actions (#13030)
    
    Set the exact version in github action to avoid unexpected check
    failures. Rely on dependabot instead
    
    Unblocks
    https://github.com/open-telemetry/opentelemetry-collector/pull/13026/ by
    resolving
    https://github.com/open-telemetry/opentelemetry-collector/actions/runs/14986150777/job/42100364641
