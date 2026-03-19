commit d00f0593651350b2d20ca811c8657d787cc3fa80
Author: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
Date:   Mon Oct 6 17:34:29 2025 +0200

    Standardize changelog component list (#13924)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This PR adds some code to generate the list of allowed components for
    `chloggen`.
    All tooling was already prepared previously so we just need to make use
    of the features.
    The PR also adds a CI check to validate the component label in all
    changelog entries.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #13923
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    I added a readme file as a replacement for the code comments in
    `.chloggen/config.yaml` since those are removed during auto generation
    of the file.
    
    <!--Please delete paragraphs that you did not use before submitting.-->
