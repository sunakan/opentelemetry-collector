commit adc1d0af1d0e4f508d2410a0a00be97279de11fa
Author: John L. Peterson (Jack) <john.peterson@datadoghq.com>
Date:   Fri Jun 27 15:45:25 2025 -0400

    [chore] Automate release branch creation on tag push (#13240)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Automates release branch creation on `make push-tags`
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Relates to
    https://github.com/open-telemetry/opentelemetry-collector/issues/11626
    
    Follow-up on #13040
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Two sample release in local repo (first bugfix then full version)
    
    - v0.128.1
    [workflow](https://github.com/DataDog/opentelemetry-collector/actions/runs/15781766998)
    and
    [release](https://github.com/DataDog/opentelemetry-collector/releases/tag/v0.128.1)
    - v0.129.0
    [workflow](https://github.com/DataDog/opentelemetry-collector/actions/runs/15781924053)
    and
    [release](https://github.com/DataDog/opentelemetry-collector/releases/tag/v0.129.0)
    
    <!--Describe the documentation added.-->
    #### Documentation
    Updated `release.md`
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    #### Additional info
    Once this is accepted and merged in core, will propose one PR to combine
    #13040 and this change in contrib
