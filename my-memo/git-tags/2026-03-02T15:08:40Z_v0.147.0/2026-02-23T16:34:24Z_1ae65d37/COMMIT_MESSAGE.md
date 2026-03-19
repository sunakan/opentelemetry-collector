commit 1ae65d374702abc45de552149a68b212c0e7a020
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Mon Feb 23 11:34:24 2026 -0500

    [chore][docs] Remove suggestion to skip stable release (#14614)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    After declining to release a new stable version alongside v0.146.0, I
    encountered [this
    issue](https://github.com/open-telemetry/opentelemetry-collector-contrib/actions/runs/22116481892/job/63925823672)
    when creating the contrib release prep PR:
    
    ```
    Error: /home/runner/go/pkg/mod/go.opentelemetry.io/collector/confmap/xconfmap@v0.146.0/confmap.go:26:18: undefined: internal.ToStringMapRaw
    ```
    
    This is because xconfmap 0.146.0 depended on internal changes to confmap
    after v1.51.0, but still officially depended on v1.51.0 since there was
    no new stable release. `make check-changes` doesn't catch issues like
    this, and also doesn't catch changes to the go.mod file, which is
    understandable but can miss important changes like security fixes.
    Adding to all of this is that this is the first release in many releases
    I've seen where it was attempted to release the beta modules without
    releasing the stable modules.
    
    As a result, I'm suggesting in this PR that we remove the recommendation
    to skip stable releases until we address these issues. I don't think the
    possibility of unnecessary stable releases on top of the beta releases
    is much overhead, and will simplify the process for now.
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
