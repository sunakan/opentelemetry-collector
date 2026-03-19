commit 432d92d8b366f6831323a928783f1ed867c42050
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Mon Mar 17 12:58:51 2025 -0400

    [chore] Remove deprecation notice for `(pcommon.Map).Range` (#12648)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Remove the deprecation notice until the v0.122.0 release is complete.
    
    After trying to migrate from `Range` to `All` in
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/38676,
    I think the changes required for this will be sufficiently large that we
    should avoid doing them during a release.
