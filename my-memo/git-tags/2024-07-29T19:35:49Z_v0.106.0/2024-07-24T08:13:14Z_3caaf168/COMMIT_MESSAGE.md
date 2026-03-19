commit 3caaf168fc2d1bf08cddbc113ee70a4f5221f7ab
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Jul 24 02:13:14 2024 -0600

    [confmap] Allow more recursion and URI expansions (#10712)
    
    #### Description
    Bumps the limit of how much recursion we allow. This check is also
    gating non-recursive expansions. We probably could separate these
    concerns, but thats work that isn't really worthwhile, a simple constant
    bump is simple and will cover most users. For the rest, there are
    workarounds.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10617
