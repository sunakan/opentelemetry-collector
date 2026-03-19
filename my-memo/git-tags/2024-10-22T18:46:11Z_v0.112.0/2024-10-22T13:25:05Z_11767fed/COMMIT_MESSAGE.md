commit 11767fed9dfee6bfbbdd1e3d0a2a109b297f568b
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue Oct 22 09:25:05 2024 -0400

    [chore] Update leaf module versions to commits with pseudo version dependencies (#11509)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Say we have three modules, A, B, and C, with dependencies C->B->A. If we
    are on commit 1, and make a new commit, 2, where we change the
    dependencies such that the go.mod files read C@2->B@1->A@1, we will
    still get a failure, because at commit 1 we had not yet made the changes
    necessary to properly resolve these modules. Specifically, at commit 2
    we have B@1->A@#, where A@# is not externally-resolvable.
    
    We therefore need to make a new commit 3, where we can have
    C@2->B@2->A@2, and at commit 2 all modules are externally-resolvable.
    
    This PR is a necessary update to
    https://github.com/open-telemetry/opentelemetry-collector/pull/11503.
    
    When running `make update-otel` in contrib, I am seeing the following
    errors:
    
    ```
    go: downloading go.opentelemetry.io/collector/connector/connectortest v0.0.0-20241021181817-007f06b7c4a8
    go: go.opentelemetry.io/collector/pipeline/pipelineprofiles@v0.111.0: reading go.opentelemetry.io/collector/pipeline/pipelineprofiles/go.mod at revision pipeline/pipelineprofiles/v0.111.0: unknown revision pipeline/pipelineprofiles/v0.111.0
    ```
    
    connectortest has an indirect dependency on pipelineprofiles, and at
    commit `007f06b7c4a8` pipelineprofiles is versioned at v0.111.0. The
    latest commit, `403c782d50c6`, will version it at `007f06b7c4a8`. Since
    pipelineprofiles has no dependencies, this will not result in any
    issues.
