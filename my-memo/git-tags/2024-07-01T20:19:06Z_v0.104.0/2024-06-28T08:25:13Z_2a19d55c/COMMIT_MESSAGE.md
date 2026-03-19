commit 2a19d55c4c24a3381c2136d1ed91b631da92bbd6
Author: Tiffany Hrabusa <30397949+tiffany76@users.noreply.github.com>
Date:   Fri Jun 28 01:25:13 2024 -0700

    [docs] Clean up internal observability docs (#10454)
    
    #### Description
    Now that
    [4246](https://github.com/open-telemetry/opentelemetry.io/pull/4246),
    [4322](https://github.com/open-telemetry/opentelemetry.io/pull/4322),
    and [4529](https://github.com/open-telemetry/opentelemetry.io/pull/4529)
    have been merged, and the new [Internal
    telemetry](https://opentelemetry.io/docs/collector/internal-telemetry/)
    and
    [Troubleshooting](https://opentelemetry.io/docs/collector/troubleshooting/)
    pages are live, it's time to clean up the underlying Collector repo docs
    so that the website is the single source of truth.
    
    I've deleted any content that was moved to the website, and linked to
    the relevant sections where possible. I've consolidated what content
    remains in the observability.md file and left troubleshooting.md and
    monitoring.md as stubs that point to the website.
    
    I also searched the Collector repo for cross-references to these files
    and adjusted links where appropriate.
    
    ~~Note that this PR is blocked by
    [4731](https://github.com/open-telemetry/opentelemetry.io/pull/4731).~~
    EDIT: #4731 is merged and no longer a blocker.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #8886
