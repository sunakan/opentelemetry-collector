commit 2f87518fbd1892f68503961b865dc132e79f7bac
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Fri May 10 12:56:02 2024 -0400

    [confmap] Deprecate `NewWithSettings` and `New` (#10134)
    
    #### Description
    
    Each of these was deprecated in v0.99.0, so I think removing them in
    v0.101.0 is a safe deprecation period for an API that is likely only
    used by vendor distros built without ocb.
    
    If we would like to extend the deprecation period or break this change
    into PRs for each module, let me know and I'll make the necessary
    changes.
