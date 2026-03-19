commit 205f5a4071d276a486e1aa0a76316d3d934cb957
Author: SACHIN KUMAR <118827645+sAchin-680@users.noreply.github.com>
Date:   Tue Nov 11 00:57:16 2025 +0530

    feat(pdata): auto-delete generated files before pdatagen regeneration (#14135)
    
    #### Description
    
    Implements automatic cleanup of generated files before pdatagen
    regeneration to prevent stale code accumulation. Previously, removing
    structs/enums from configuration left behind unused generated files
    requiring manual cleanup (see #14073).
    
    **Solution:** All generated files are now automatically deleted before
    regeneration, ensuring generated code always matches the current
    configuration.
    
    **Implementation:**
    - `CleanInternalGeneratedFiles()` - cleans shared `pdata/internal/`
    directory
    - `CleanGeneratedFiles()` - cleans individual package directories
    - Covers all patterns: `generated_*.go`, `generated_wrapper_*.go`,
    `generated_proto_*.go`, `generated_enum_*.go`
    
    #### Link to tracking issue
    
    Fixes #14074 - Automatic delete generated files with pdatagen before
    re-generate
    
    #### Testing
    
    - [x] Successfully built and ran `make genpdata`
    - [x] Verified all 160+ generated files covered by cleanup patterns
    - [x] No compilation or linting errors
    - [x] Gracefully handles non-existent files
    
    #### Documentation
    
    Self-documented code with clear function comments. No user-facing
    changes required.
    
    ---------
    
    Signed-off-by: SACHIN KUMAR <mrmister680@gmail.com>
