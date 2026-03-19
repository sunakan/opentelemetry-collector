commit 76af795516065ecabc2dd29f824aa80237a2bd5a
Author: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
Date:   Mon Mar 24 10:52:44 2025 +0100

    [chore] move api-diff pipeline to ubuntu runner (#12549)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Move the api-diff workflow to the standard `ubuntu-latest` runner and
    adjust the OS dependent call to mktemp so that it works for both linux
    and macos.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/7444
    
    #### Testing
    
    Tested on my fork:
    
    https://github.com/mowies/opentelemetry-collector/actions/runs/13941800348/job/39019991437
    
    Also tested this locally on MacOS.
    
    
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Signed-off-by: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
