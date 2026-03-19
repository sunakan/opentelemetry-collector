commit 0ece6789195060e4157cfa46ae093170b46495da
Author: Chao Weng <19381524+sincejune@users.noreply.github.com>
Date:   Thu Jan 9 00:59:36 2025 +0800

    [chore] Fix link checker to allow empty links (#12055)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Fix an issue that `changelog` action will fail if there are no links
    detected:
    https://github.com/open-telemetry/opentelemetry-collector/actions/runs/12667603014/job/35301289365
    
    Adding `failIfEmpty: false` to the action according to the doc:
    https://github.com/lycheeverse/lychee-action/blob/master/README.md#passing-arguments
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    n/a
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    n/a
    
    <!--Describe the documentation added.-->
    #### Documentation
    n/a
    
    <!--Please delete paragraphs that you did not use before submitting.-->
