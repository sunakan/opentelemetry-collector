commit 44321bde4f2751c6daf05fe80a2c605ea8c22505
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Mon Oct 21 10:57:08 2024 -0400

    [chore] Add missing API changelog for configcompression (#11496)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    `make check-changes PREVIOUS_VERSION=v1.17.0 MODSET=stable` returned
    that a v1.18.0 release is necessary due to changes in configcompression.
    This adds a missing changelog entry for the module since the other
    changelog entry only mentions confighttp.
