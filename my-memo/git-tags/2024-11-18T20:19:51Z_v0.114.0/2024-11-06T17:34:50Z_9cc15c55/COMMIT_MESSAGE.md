commit 9cc15c5596cdfd22778bc47a074468597065b796
Author: John L. Peterson (Jack) <john.peterson@datadoghq.com>
Date:   Wed Nov 6 12:34:50 2024 -0500

    add confmap.Converter an option for ocb build manifest/template (#11584)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Adds ability to add confmap.Converter as a module to build/import with
    ocb
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/11582
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Added validation tests for pulling the converter go module in
    cmd/builder template/build process.
    Additionally, I took the default otelcorecol manifest, added a
    `converters` section, and added the `expandconverter` and verified that
    a custom collector both built, started up, and exited successfully.
    
    <!--Describe the documentation added.-->
    #### Documentation
    Changelog file added. I can also update the documentation in cmd/builder
    README if community thinks that is necessary. Since `confmap.Converter`
    is not yet registered in the OTel registry and does not have any
    existing components published save for the deprecated `expandconverter`
    I was not certain if anything further than a changelog was necessary.
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Andrzej Stencel <andrzej.stencel@elastic.co>
