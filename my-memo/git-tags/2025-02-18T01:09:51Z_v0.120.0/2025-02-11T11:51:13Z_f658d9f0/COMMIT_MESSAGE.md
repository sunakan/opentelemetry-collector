commit f658d9f0d3023024ffd33775678a2e192536ab36
Author: Chao Weng <19381524+sincejune@users.noreply.github.com>
Date:   Tue Feb 11 19:51:13 2025 +0800

    [chore] Fix component test template (#12350)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This PR makes `"go.opentelemetry.io/collector/component"` to be always
    present to create component type:
    ```
    var typ = component.MustNewType("{{ .Type }}")
    ```
    
    cc @mx-psi
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Relevant to #12305
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    n/a
    
    <!--Describe the documentation added.-->
    #### Documentation
    n/a
    
    <!--Please delete paragraphs that you did not use before submitting.-->
