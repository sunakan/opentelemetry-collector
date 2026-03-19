commit 02ceda1496be76bc5c7dd69e663370a4ae5815ce
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue Oct 22 10:42:30 2024 -0400

    [chore] Use psuedo-version number for exportertest (#11511)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This module was added yesterday and needs an externally-addressable
    version number for `make update-otel` in contrib.
    
    I have also updated all other pseudo-version numbers as a precautionary
    measure in case the dependency tree is deeper than I thought. I added
    that change in a separate commit to make reviewing this easier.
