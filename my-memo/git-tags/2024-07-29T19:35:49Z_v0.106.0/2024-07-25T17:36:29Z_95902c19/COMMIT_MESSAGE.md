commit 95902c19f5a7743d1ad6eba1d006a66fcbc1338f
Author: Matthew Wear <matthew.wear@gmail.com>
Date:   Thu Jul 25 10:36:29 2024 -0700

    [component] Restrict character set for component.ID name (#10674)
    
    #### Description
    While working on
    https://github.com/open-telemetry/opentelemetry-collector/pull/10495 we
    discovered that there are not any restrictions on the `name` field of a
    `component.ID`. There are restrictions on the `type` field introduced in
    #9208. This PR adds similar restrictions to `name`.
    
    A type must
    - have at least one character,
    - start with an ASCII alphabetic character and
    - can only contain ASCII alphanumeric characters and '_'.
    
    I found that we need a slightly different set of rules for name as some
    tests use a digit and others use a uuid as a name. A name is still
    optional, but if it's provided it must:
    - have at least one character,
    - start with an ASCII alphanumeric character and
    - can only contain ASCII alphanumeric characters, '_', and '-'.
    
    I'd be willing to adjust these restrictions if anyone has any opinions
    on what should or should not be allowed.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #10673
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Unit tests
    
    <!--Describe the documentation added.-->
    #### Documentation
    Code comments
    
    <!--Please delete paragraphs that you did not use before submitting.-->
