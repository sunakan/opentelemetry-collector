commit 26c157e3bffb60210a3f65f218ed51be1809ca0a
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Feb 2 16:33:03 2024 +0000

    [component] Add MustNewType constructor for component.Type (#9414)
    
    **Description:**
    
    - Adds `component.MustNewType` to create a type. This function panics if
    the type has invalid characters. Add similar functions
    `component.MustNewID` and `component.MustNewIDWithName`.
    - Adds `component.Type.String` to recover the string
    - Use `component.MustNewType`, `component.MustNewID`,
    `component.MustNewIDWithName` and `component.Type.String` everywhere in
    this codebase. To do this I changed `component.Type` into an opaque
    struct and checked for compile-time errors.
    
    Some notes:
    
    1. All components currently on core and contrib follow this rule. This
    is still breaking for other components.
    2. A future PR will change this into a struct, to actually validate this
    (right now you can just do `component.Type("anything")` to bypass
    validation). I want to do this in two steps to avoid breaking contrib
    tests: we first introduce this function, and after that we change into a
    struct.
    
    **Link to tracking Issue:** Updates #9208
