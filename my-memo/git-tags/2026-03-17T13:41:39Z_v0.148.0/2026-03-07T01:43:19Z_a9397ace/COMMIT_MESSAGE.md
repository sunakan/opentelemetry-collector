commit a9397aceb2b44d14887323982938ae273eec7afe
Author: Soumya Raikwar <164396577+SoumyaRaikwar@users.noreply.github.com>
Date:   Sat Mar 7 07:13:19 2026 +0530

    [cmd/mdatagen] Preserve custom extensions during schema reference resolution (#14713)
    
    #### Description
    This PR fixes an issue in the `cfggen/resolver.go` where resolving a
    `$ref` reference blindly overwrites the referencing node. This currently
    causes any custom extensions defined locally on the referencing node
    (such as `x-customType` mapped to `GoType`, `x-pointer`, `x-optional`,
    `default`, or `description`) to be completely lost.
    
    This fix preserves these extensions before resolution and restores them
    on the target node afterward. This is a crucial prerequisite for
    generating the correct Go structs for fields that need custom mappings
    (e.g., `time.Duration`).
    
    #### Link to tracking issue
    Fixes #14565
    Relates to #14543
    
    #### Testing
    - Ran `make mdatagen-test` successfully.
    
    ---------
    
    Signed-off-by: SoumyaRaikwar <somuraik@gmail.com>
