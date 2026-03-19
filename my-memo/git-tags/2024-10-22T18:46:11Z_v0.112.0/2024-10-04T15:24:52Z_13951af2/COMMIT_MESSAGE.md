commit 13951af284f61c3ab88d1e7e9af2de5ce084cafe
Author: Juliano Costa <julianocosta89@outlook.com>
Date:   Fri Oct 4 17:24:52 2024 +0200

    [chore]: Add Profiles Marshaler to otlptext (#11161)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This is the initial work towards #11155.
    This PR adds profiles marshalers to `otlptext`, which will be used in
    the `debugexporter` later on.
    
    To continue the work on the `debugexporter` I'd wait on the PR #11131,
    as it adds some shared components.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Added `TestProfilesText`, testing the following scenarios:
    - `empty_profiles`
    - `two_profiles`
