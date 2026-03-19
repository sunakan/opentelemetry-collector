commit 24da249ccec3eead79acc885776295d071a76ed7
Author: Oussama Ben Ghorbel (Dainerx) <d.oussamabenghorbel@gmail.com>
Date:   Tue Jan 21 11:40:45 2025 +0100

    [chore] Ability to provide custom ld and gc flags (#11996)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    The primary purpose of this PR is to provide greater flexibility in how
    OTEL binaries are built, enabling the inclusion of debugging symbols
    when needed, without always stripping them by default.
    
    Currently, debugging symbols are only retained when
    debug_compilation=true. However, this approach also disables all
    compiler inlining and optimizations (gcflags=all=-N -l) to ensure an
    exact match between written and executed code, resulting in a
    significant increase in CPU consumption. There are scenarios where we
    want binaries with debugging symbols and DWARF information while still
    allowing the compiler to optimize and inline. This PR addresses that
    need by introducing configurable GCFlags.
    
    `ocb --ldflags="" --gcflags="" --config=builder-config.yaml`
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    [#58](https://github.com/open-telemetry/opentelemetry-collector-releases/issues/58)
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Manual
    
    Override LDflags:
    
    
    ![image](https://github.com/user-attachments/assets/6bcb0f7b-492a-45fb-a232-9c337afb5f5e)
    
    
    Override both
    
    
    ![image](https://github.com/user-attachments/assets/00bc6c5f-37f0-438d-b4e1-f7a2d5833ec9)
    
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    README file updated.
    
    --
    
    Backward compatibility concerns:
    - As of today, passing cfg.LDFlags will append to LD flags that are by
    default to `-s -w`.
    
    Questions:
    - Should we deprecate DebugCompilation property?
    <!--Please delete paragraphs that you did not use before submitting.-->
