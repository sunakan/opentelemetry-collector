commit 78fbbf655bd3c3113e7efaa120b78987ddb2c7d3
Author: Florian Lehner <florianl@users.noreply.github.com>
Date:   Thu Jul 10 15:02:10 2025 +0200

    [pdata/pprofile]  remove field Profile.StartTime from pdata/pprofile  (#13315)
    
    When working with pdata/pprofile I noticed, there is no field named
    StartTime in message Profile of the OTel Profiling signal in version
    v1.7.0 - see
    https://github.com/open-telemetry/opentelemetry-proto/blob/v1.7.0/opentelemetry/proto/profiles/v1development/profiles.proto.
    I also reordered the fields according to the OTel Profiling signal
    specification.
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Signed-off-by: Florian Lehner <florian.lehner@elastic.co>
