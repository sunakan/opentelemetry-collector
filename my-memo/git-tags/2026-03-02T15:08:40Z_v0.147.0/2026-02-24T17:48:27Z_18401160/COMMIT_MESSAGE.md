commit 18401160ded187a54dbcd44b952538a965ed2bf4
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue Feb 24 12:48:27 2026 -0500

    [chore] Temporarily disable CodSpeed (#14637)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Temporarily disables automatically running CodSpeed on main and PRs
    while we determine how to make the workflow reliably run under the
    workflow time limit. This still retains the ability to manually trigger
    runs.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/14636
