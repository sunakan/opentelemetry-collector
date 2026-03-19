commit 8b9713f5ed7b4850a9ba71f7fbcb9ddff4325057
Author: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
Date:   Wed Mar 26 11:45:22 2025 +0100

    [chore] Auto-populate release title (#12657)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This PR auto populated the release title correctly to the latest
    doubel-tag (e.g. `v1.27.0/v0.121.0`)
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Follow up to #10191
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Release tested on my fork:
    https://github.com/mowies/opentelemetry-collector/releases/tag/v0.122.0
    Pipeline that filled in the release:
    https://github.com/mowies/opentelemetry-collector/actions/runs/13920280151/job/38951687724
    
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    Signed-off-by: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
