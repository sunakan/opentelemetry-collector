commit 727ae96d621450fc5afd3a81b4669b48756a760d
Author: Vihas Makwana <121151420+VihasMakwana@users.noreply.github.com>
Date:   Fri May 2 01:11:16 2025 +0530

    [confmap] use DeepEqual when using confmap.enableMergeAppendOption (#12952)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    `Equal(..)` panics when we're comparing maps. Use `reflect.DeepEqual`
    instead. It behaves same way as `Equal` for types such as `int`,
    `string`, `float` etc, but compares individual elements for maps as
    well.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/12932
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Added a scenario
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
