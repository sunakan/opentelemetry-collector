commit 0001db27595c159ce35e498d7a96537ae0b74bde
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Jul 25 10:06:08 2024 +0200

    [confmap] Store original string in confmap.Conf (#10618)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    - Adds new `expandedValue` struct that holds the original string
    representation if available for values resolved from a provider.
    - Removes any mention of `expandedValue` in the public API by adding a
    `sanitize` step before returning any `Get`s or `ToStringMap`s.
    - Adds new decoding hook that checks if the target field is of `string`
    type and uses the string representation in that case.
    
    
    
    #### Link to tracking issue
    
    Fixes #10605, Fixes #10405, Fixes #10659
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    
    This changes the behavior in some cases, I update the test cases.
    
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    | ENV value | ${ENV} before unification | ${ENV} in v0.105.0 (also
    ${env:ENV} before unification) | Value after this PR |
    
    |----------------------------|----------------------------|---------------------------------------------------------|----------------------------|
    | foo\nbar | foo\nbar | foo bar | foo\nbar |
    | 1111:1111:1111:1111:1111:: | 1111:1111:1111:1111:1111:: | **Error** |
    1111:1111:1111:1111:1111:: |
    | "0123" | "0123" | 0123 | "0123" |
