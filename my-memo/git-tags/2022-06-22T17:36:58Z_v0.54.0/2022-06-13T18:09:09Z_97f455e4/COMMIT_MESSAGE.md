commit 97f455e4ae1ad279e1f37624ddbc0326b6c37cc6
Author: Alex Boten <aboten@lightstep.com>
Date:   Mon Jun 13 11:09:09 2022 -0700

    [chore] add gh action to consolidate dependabot PR (#5526)
    
    This PR is the core repo version of https://github.com/open-telemetry/opentelemetry-collector-contrib/commit/eac0998a9d39121e3647180059acf2dd02dd3f77
    
    This pr adds a workflow to replace the manual work required to commit all the dependabot PRs. The workflow:
    - checks out the code
    - runs .github/workflows/scripts/dependabot-pr.sh which looks for all dependabot PRs and applies the dependency update
    - runs tidy/builds the collector
    - commits a change and creates a PR
