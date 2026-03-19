commit 567786e7df1fa5ab7714dca9f67d1d87c682dd43
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Sep 10 20:11:24 2020 -0400

    Increase OpenCensus perf test memory limit to avoid failures (#1758)
    
    OpenCensus appears to need more memory and randomly fails sometimes, e.g.:
    https://app.circleci.com/pipelines/github/open-telemetry/opentelemetry-collector/3370/workflows/13f25fff-56dd-4df0-8c12-31a2432700f6/jobs/34450
