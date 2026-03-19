commit c6d1e2f483e37ffc832fb3dba70e9ad6880e5a31
Author: Jan Korona <jakorona@cisco.com>
Date:   Tue Mar 3 17:40:25 2026 +0100

    [cmd/mdatagen] Add component config JSON schema generation (#14548)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR is part of the plan established in [component configuration
    schema roadmap
    RFC](https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/rfcs/component-configuration-schema-roadmap.md).
    
    Changes:
    - Added config section to `metadata.yaml` with subset of JSON Schema
    draft 2020-12 support
    - Enables automatic generation of JSON Schema files from component
    configuration metadata
    - Supports validation constraints, references
    (internal/external/relative) and schema composition (allOf)
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #14559
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    - Added unit tests for json schema generator
    - Extended loader unit tests to verify config metadata definition
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    - added config metadata description to `metadata-schema.yaml`
    - added info about config metadata to `README.md`
    - added config metadata to two test components:
       - `samplescraper`
       - `samplereceiver`
    
    <!--Please delete paragraphs that you did not use before submitting.-->
