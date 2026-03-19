commit 0f81b781c1bf8a74c43b766cd51663b08e065586
Author: luccabb <32229669+luccabb@users.noreply.github.com>
Date:   Tue Oct 8 13:03:17 2024 -0700

    fix version init (#11388)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    ```
    debug.ReadBuildInfo()
    ```
    
    returns an error for some environments, which then panics on
    `info.Main.Version`:
    
    ```
    panic: runtime error: invalid memory address or nil pointer dereference
    ```
    
    this fixes the issue by only updating the version if
    `debug.ReadBuildInfo()` succeeds
