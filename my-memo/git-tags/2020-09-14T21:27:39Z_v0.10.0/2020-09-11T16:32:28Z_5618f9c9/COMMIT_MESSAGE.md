commit 5618f9c983cbb0b77be4523704a4417549a34197
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Fri Sep 11 12:32:28 2020 -0400

    Increase Zipkin perf test memory limit to avoid failures (#1757)
    
    Zipkin appears to need more memory and randomly fails sometimes, e.g.:
    https://app.circleci.com/pipelines/github/open-telemetry/opentelemetry-collector/3370/workflows/73f553df-16ba-40f4-aa04-8f01968b2728/jobs/34445
