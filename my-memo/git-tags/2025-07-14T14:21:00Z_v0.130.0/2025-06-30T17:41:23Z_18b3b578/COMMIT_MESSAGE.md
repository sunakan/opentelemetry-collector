commit 18b3b578b0b337541adee619fd668b04a18e2048
Author: Chao Weng <19381524+sincejune@users.noreply.github.com>
Date:   Tue Jul 1 01:41:23 2025 +0800

    [cmd/mdatagen] Add support for optional attribute (#13007)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Add support for optional attribute, ref: [Conditional Required
    Attribute](https://github.com/open-telemetry/semantic-conventions/blob/main/docs/general/attribute-requirement-level.md#conditionally-required)
    
    Notes:
    - Add `helper.tmpl` for helper templates
    - Add `With<AttributeName>EventAttribute` and
    `With<AttributeName>MetricAttribute` for optional attributes
    - Add some helper functions in go files.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Relevant to #12571
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Updated
    
    <!--Describe the documentation added.-->
    #### Documentation
    Added
    
    <!--Please delete paragraphs that you did not use before submitting.-->
