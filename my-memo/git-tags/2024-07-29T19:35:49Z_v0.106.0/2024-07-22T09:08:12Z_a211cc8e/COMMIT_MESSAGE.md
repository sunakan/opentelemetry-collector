commit a211cc8eccf94014752608fcad67a62d5ac1d479
Author: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
Date:   Mon Jul 22 11:08:12 2024 +0200

    [chore] correctly escape . characters during release preparation (#10631)
    
    #### Description
    This PR fixes an issue where the `.` character in a version string (e.g.
    `1.2.3`) was interpreted by `sed` as any character and therefore needed
    to be properly escaped. This happened during the prepare-release
    workflow.
    The version string for the current stable and current beta version
    strings provided at pipeline start is replaced as follows:
    ```
    1.2.3 -> 1[.]2[.]3
    ```
    
    This ensures that `sed` searches for the literal `.` character instead
    of interpreting it as a wildcard character.
    I specifically used the `[]` syntax to avoid the hassle of "how many
    backslashes do i need until it's properly escaped?". (and that for bash
    and sed, which work different on different OSes anyways which makes it
    hard to test as well)
    
    
    #### Link to tracking issue
    Fixes #9748
    
    Signed-off-by: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
