commit 4b8ef9077c373e02c4c179d80ad16f52898e1d9c
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Wed Aug 6 12:13:06 2025 -0400

    [chore][confighttp] Rename receiver variables (#13576)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    I was puzzling over what "hss" meant when looking at confighttp earlier,
    and realized it's a holdover from when the struct was named
    `HTTPServerSettings`. This renames the receiver variables for both
    `ClientConfig` and `ServerConfig` to be initialisms of these two types.
