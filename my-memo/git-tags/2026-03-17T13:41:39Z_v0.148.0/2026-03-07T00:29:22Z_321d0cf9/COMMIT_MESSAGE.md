commit 321d0cf994523afd12f67a760c1026462c4b1144
Author: Jan Korona <jakorona@cisco.com>
Date:   Sat Mar 7 01:29:22 2026 +0100

    [cmd/mdatagen] Add basic Go config generation (#14693)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR is part of the plan established in [component configuration
    schema roadmap
    RFC](https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/rfcs/component-configuration-schema-roadmap.md).
    
    Changes:
    
    - Enables automatic generation of basic config go structs from component
    configuration metadata
    - Supports referencing both local and external types
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #14561
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    - unit tests coverage for go config generation
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    See sample generated configs:
    - `cmd/mdatagen/internal/samplescraper/generated_config.go`
    - `cmd/mdatagen/internal/samplereceiver/generated_config.go`
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Dmitry Anoshin <anoshindx@gmail.com>
