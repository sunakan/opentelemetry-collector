commit 983cc465d170cfed0356c6b87779a00a4a5685d3
Author: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
Date:   Wed Mar 12 17:07:15 2025 +0100

    [chore] Add OCB release test workflow (#12573)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This PR adds a workflow that tests if the builder can be released with
    the current source code and release setup.
    It takes the source code from this repo and adds the release config and
    Dockerfile from the collector-releases repo, then it runs a test
    release.
    
    Tested on my fork:
    https://github.com/mowies/opentelemetry-collector/actions/runs/13761002306/job/38476925222
    (pipeline fails because of goreleaser pro features still being enabled,
    but the rest works)
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #12570
    
    ---------
    
    Signed-off-by: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
    Co-authored-by: Douglas Camata <159076+douglascamata@users.noreply.github.com>
