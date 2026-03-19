commit fef33e98f6de45ca624f1f440da2314a0b88230f
Author: John L. Peterson (Jack) <john.peterson@datadoghq.com>
Date:   Thu May 22 13:36:13 2025 +0200

    [chore] [OTEL-2623] Automate Release Step 4 - push branch (#13040)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    [#12989](https://github.com/open-telemetry/opentelemetry-collector/issues/12989)
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Sample release (bugfix and new version) in jackgopack4 fork.
    - [v0.126.1 workflow
    success](https://github.com/jackgopack4/opentelemetry-collector/actions/runs/15048048531/job/42295539150)
    - [v0.126.1 release after pushing tags
    locally](https://github.com/jackgopack4/opentelemetry-collector/releases/tag/v0.126.1)
    - [v0.127.0 workflow
    success](https://github.com/jackgopack4/opentelemetry-collector/actions/runs/15048921462/job/42298512054)
    - [v0.127.0 release after pushing tags
    locally](https://github.com/jackgopack4/opentelemetry-collector/releases/tag/v0.127.0)
    
    
    <!--Describe the documentation added.-->
    #### Documentation
    Update release.md in docs folder to reflect step 4 (and ability to run
    as workflow or local bash script).
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
