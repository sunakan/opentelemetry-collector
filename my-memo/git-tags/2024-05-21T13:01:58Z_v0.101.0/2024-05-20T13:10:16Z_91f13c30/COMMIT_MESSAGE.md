commit 91f13c309d00eef5b997a2e810effb2a4ccd95d4
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Mon May 20 09:10:16 2024 -0400

    [confmap] Remove deprecated ResolverSettings fields (#10173)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    These fields were deprecated in v0.99.0 and aren't used in any upstream
    repositories.
    
    These appear to still be used in downstream distributions. If we want to
    lengthen the deprecation period for these fields, I'll open a PR to
    instead set a timeline for their removal.
