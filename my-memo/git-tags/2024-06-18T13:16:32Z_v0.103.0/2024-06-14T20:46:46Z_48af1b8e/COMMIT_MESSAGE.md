commit 48af1b8ea63a3393e468368beed47ce3668e5c73
Author: Curtis Robert <crobert@splunk.com>
Date:   Fri Jun 14 13:46:46 2024 -0700

    [chore][golangci-lint] Remove gosec excludes (#10411)
    
    #### Description
    The upstream issue was fixed by
    https://github.com/golangci/golangci-lint/pull/4748, which was included
    in release
    [`v1.59.0`](https://github.com/golangci/golangci-lint/releases/tag/v1.59.0)
    of `golangci-lint`. From local testing, we're pulling version `v1.59.0`
    of `golangci-lint`, so the issue should be resolved.
    
    Local runtime with excludes:
    ```
    $ .tools/golangci-lint run -v --enable-only gosec
    ...
    INFO Execution took 1.866075148s
    INFO Execution took 1.218805785s
    INFO Execution took 1.09527985s
    ```
    Local runtime without excludes:
    ```
    $ .tools/golangci-lint run -v --enable-only gosec
    ...
    INFO Execution took 2.244716429s
    INFO Execution took 1.539717296s
    INFO Execution took 1.530163777s
    ```
    
    Note: I ran `.tools/golangci-lint cache clean` between each test to
    clean the cache and keep results as consistent as possible.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10213
