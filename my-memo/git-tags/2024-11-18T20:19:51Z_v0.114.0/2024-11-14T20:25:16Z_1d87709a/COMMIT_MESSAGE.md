commit 1d87709aeabf492fdfd59ee110f8396c0441206b
Author: John L. Peterson (Jack) <john.peterson@datadoghq.com>
Date:   Thu Nov 14 15:25:16 2024 -0500

    [chore] rename confmap modules to ConfmapConverters and ConfmapProviders (#11678)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    change name in templates and cmd/builder to refer to Providers and
    Converters as ConfmapProviders and ConfmapConverters
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    as requested here:
    https://github.com/open-telemetry/opentelemetry-collector/pull/11653#discussion_r1841202325
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    existing tests should cover this
    <!--Describe the documentation added.-->
    #### Documentation
    none, internal change and no new code/api
    <!--Please delete paragraphs that you did not use before submitting.-->
