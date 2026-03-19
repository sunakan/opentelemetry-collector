commit a624a45dd0f3987e53d023f7f46d01f5b72ec862
Author: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
Date:   Wed Mar 26 11:34:19 2025 +0100

    [chore] Auto-populate versions during release preparation (#12733)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This PR updated the prepare-release workflow so that the version bump
    just needs to be selected in a dropdown menu instead of putting in the
    version numbers by hand. Additionally, "no bump" can be selected to not
    bump specific component sets (beta or stable).
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #12565
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Only bumping beta to next minor: [workflow
    run](https://github.com/mowies/opentelemetry-collector/actions/runs/14059792536)
    - [release tracker
    issue](https://github.com/mowies/opentelemetry-collector/issues/17)
    Bumping beta and stable to next minor: [workflow
    run](https://github.com/mowies/opentelemetry-collector/actions/runs/14058979304/job/39364990356)
    - [release tracker
    issue](https://github.com/mowies/opentelemetry-collector/issues/16)
    Bumping beta and stable to next patch: [workflow
    run](https://github.com/mowies/opentelemetry-collector/actions/runs/14059861157)
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Signed-off-by: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
