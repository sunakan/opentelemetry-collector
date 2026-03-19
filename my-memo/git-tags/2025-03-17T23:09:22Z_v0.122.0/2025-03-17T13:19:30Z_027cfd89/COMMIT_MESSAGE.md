commit 027cfd89f3b43a76cc6eb23e40b936281a8aceea
Author: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
Date:   Mon Mar 17 14:19:30 2025 +0100

    [chore] Auto-populate release notes (#12644)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This PR changes the release workflow to autofill the release notes from
    `CHANGELOG.md` and `CHANGELOG-API.md` into the generated GH release.
    
    It makes use od `awk` and `sed` to build the release notes step by step
    from the changelog files.
    The [default chloggen
    template](https://github.com/open-telemetry/opentelemetry-go-build-tools/blob/c43cb0331ccdb9ff9b4a8862a3dce032147e615d/chloggen/internal/chlog/summary.tmpl)
    was added and a `<!--preview-version-->` tag was added to easily filter
    out the changelog of just the latest version.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #10191
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Tested on my fork.
    Release with autofilled changelog:
    https://github.com/mowies/opentelemetry-collector/releases/tag/v0.121.0
    Workflow that did it:
    https://github.com/mowies/opentelemetry-collector/actions/runs/13899615357/job/38888008499
    
    <!--Describe the documentation added.-->
    #### Documentation
    The release checklist was updated accordingly.
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Signed-off-by: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
