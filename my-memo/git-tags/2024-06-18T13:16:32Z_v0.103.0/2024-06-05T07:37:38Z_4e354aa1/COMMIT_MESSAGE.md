commit 4e354aa139ede4b880726f8db8148635d48594ef
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Wed Jun 5 03:37:38 2024 -0400

    [confighttp] Deprecate `CustomRoundTripper` (#10310)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Deprecates the `CustomRoundTripper` field on `confighttp.ClientConfig`,
    which is unused outside tests in Contrib and causes errors because it
    cannot be unmarshaled or marshaled. Additionally, having a
    non-configurable field on a Config struct seems non-ideal.
    
    Soft depends on
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/33371
    so we're not using deprecated APIs.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #8627
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Adapted tests to how the new way of doing this will look. It's slightly
    less ergonomic (you can't load up all the settings then just run
    `ToClient`), but we have no examples of this being used by any
    components, so I'm reluctant to add it to the API.
