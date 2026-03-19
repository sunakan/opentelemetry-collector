commit 9811830023e648c8b56008c28bf5459cf1135d38
Author: John L. Peterson (Jack) <john.peterson@datadoghq.com>
Date:   Tue Sep 24 15:23:07 2024 -0400

    Re-add version code to cmd/builder (#11208)
    
    Revert "[chore] delete code to set a version and date, as it it not used
    (#10715)"
    Remove date string but re-add functions that check for version number
    This (mostly) reverts commit b53f57d.
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This re-enables the functionality to set a version number for ocb binary
    (cmd/builder). It was erroneously removed. It also adds unit tests for
    this functionality, as a warning is given on CI with no code coverage.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Relates to
    https://github.com/open-telemetry/opentelemetry-collector-releases/issues/664.
    Closes #11220 along with
    https://github.com/open-telemetry/opentelemetry-collector-releases/pull/665
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    ran build and release cycles inside personal fork repositories
    (jackgopack4/opentelemetry-collector and
    jackgopack4/opentelemetry-collector-releases)
    <!--Describe the documentation added.-->
    #### Documentation
    .chloggen file
    <!--Please delete paragraphs that you did not use before submitting.-->
