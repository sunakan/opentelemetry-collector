commit 665ab5d0143de3ff9e525aefe6e8057933097083
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Mon Mar 16 20:32:52 2026 -0700

    [cmd/mdatagen] Localize same-repo schema refs using import root path (#14774)
    
    This change make mdatagen to rewrite same-repo schema references to
    absolute local refs during schema generation and resolution.
    
    Instead of keeping refs like go.opentelemetry.io/collector/filter.config
    as versioned external references, mdatagen now converts them to
    /filter.config when the ref belongs to the current repo import root.
    
    This avoids generator failures in release/version-bump PRs where
    mdatagen would otherwise try to resolve schemas from a not-yet-published
    version tag or .schemas/<next-version> cache. See
    https://github.com/open-telemetry/opentelemetry-collector/actions/runs/23166843771/job/67309001982?pr=14772
