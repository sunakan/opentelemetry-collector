commit 6764622672bc3d55ee5eea3ebf0f5ff62f8d7ae8
Author: Dakota Paasman <122491662+dpaasman00@users.noreply.github.com>
Date:   Wed Aug 21 08:09:36 2024 -0400

    [extension] Add ModuleInfo to extension.Settings (#10888)
    
    #### Description
    Paired with @djaglowski on adding a new struct, `ModuleInfo`, to
    `extension.Settings`. The goal is to make the collector's component go
    modules available to extensions that may want to use that information
    (in particular the OpAMP extension).
    
    We didn't want to modify the `extension` package but adding this
    information to the Settings struct seems to be the most painless way to
    make this information available. No function signatures need to be
    updated and existing extensions can just ignore the new field on the
    Settings struct unless they want the information.
    
    #### Link to tracking issue
    Fixes #10876
    
    #### Testing
    Updated existing tests.
    
    ---------
    
    Co-authored-by: Dan Jaglowski <jaglows3@gmail.com>
