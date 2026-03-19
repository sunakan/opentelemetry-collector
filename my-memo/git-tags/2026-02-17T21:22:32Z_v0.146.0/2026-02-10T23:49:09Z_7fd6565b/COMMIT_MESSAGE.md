commit 7fd6565b9e1d9ac08d280a6c814d2ff33dc62694
Author: ANAMASGARD <137998824+ANAMASGARD@users.noreply.github.com>
Date:   Wed Feb 11 05:19:09 2026 +0530

    [docs] Document avoiding embedded structs in config structures (#14340)
    
    #### Description
    
    Add guidelines to coding-guidelines.md explaining why embedded structs
    should be avoided in configuration definitions. This helps prevent
    unmarshal issues, naming conflicts, and improves code clarity.
    
    Key points added to the documentation:
    - **Unmarshal Compatibility**: Embedded structs can break custom
    `Unmarshal` implementations
    - **Naming Conflicts**: Embedded structs can cause field name collisions
    when multiple embedded types have fields with the same name
    - **Clarity**: Named fields make the configuration structure more
    explicit and easier to understand
    - **Example code**: Shows the difference between BAD (embedded) and GOOD
    (named fields) patterns
    
    #### Link to tracking issue
    
    Fixes #12719
    
    #### Testing
    
    Documentation only - no code changes. No testing required.
    
    #### Documentation
    
    Added new subsection "Avoid Embedded Structs" under the existing
    "Configuration structs" section in
    [docs/coding-guidelines.md](cci:7://file:///home/linux/LFX/opentelemetry-collector/docs/coding-guidelines.md:0:0-0:0).
    The section includes:
    - Clear explanation of what embedded structs are
    - Three key reasons to avoid them in configurations
    - Code example demonstrating the preferred approach using named fields
    with mapstructure tags
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
