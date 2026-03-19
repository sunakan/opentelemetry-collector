commit e29cd2e36e388c552b08f2e17066e7d5a2c6160d
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Apr 29 14:10:22 2021 -0400

    Bump memory limit for TestTraceNoBackend10kSPS/MemoryLimit (#3060)
    
    We are running very close to limit (e.g. 66MB in this run https://app.circleci.com/pipelines/github/open-telemetry/opentelemetry-collector/6834/workflows/146b061a-c3dc-4601-ac43-4a31c201c064/jobs/78320) and sometime exceed it and fail the build.
    
    Bumping slightly to avoid failures. The limit is still low enough to ensure memory limiter work (the max is lower than the min without limiter).
