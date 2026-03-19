commit 96a3ad1cc02b4dd27a10cab139cf38fe7c2e499a
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Mon Dec 16 15:42:46 2024 -0500

    [chore] put back replace and add new packages in builder yaml (#11909)
    
    This reverts commit
    https://github.com/open-telemetry/opentelemetry-collector/commit/5272797f7b90053f621774a8da27afd59f963c7e
    because it breaks releases, see
    https://github.com/open-telemetry/opentelemetry-collector/actions/runs/12358329683/job/34488569900?pr=11904
    
    and adds replace of the new x[consumer|experter|...] packages to the
    builder yaml
