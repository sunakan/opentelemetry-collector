commit a9c5de2b65b3fcc4ceee0ff94128711e4908bcea
Author: Christos Markou <chrismarkou92@gmail.com>
Date:   Tue Mar 4 21:12:54 2025 +0200

    [mdatagen] Add deprecation date and migration note fields for deprecated components (#12464)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR adds deprecation date and migration note fields for deprecated
    components as described at
    https://github.com/open-telemetry/opentelemetry-collector/issues/12359.
    
    Example metadata file:
    
    ```yaml
    status:
      class: receiver
      stability:
        development: [logs]
        beta: [traces]
        stable: [metrics]
        deprecated: [profiles]
      deprecation:
        profiles:
          migration: "no migration needed"
          date: "2025-02-05"
    ```
    
    Example README.md:
    
    | Status        |           |
    | ------------- |-----------|
    | Stability     | [deprecated]: profiles   |
    |               | [development]: logs   |
    |               | [beta]: traces   |
    |               | [stable]: metrics   |
    | Deprecation of profiles | [Date]: 2025-02-05   |
    |                      | [Migration Note]: no migration needed   |
    
    [deprecated]:
    https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/component-stability.md#deprecated
    [development]:
    https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/component-stability.md#development
    [beta]:
    https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/component-stability.md#beta
    [stable]:
    https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/component-stability.md#stable
    [Date]:
    https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/component-stability.md#deprecation-information
    [Migration Note]:
    https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/component-stability.md#deprecation-information
    
    I'd appreciate any suggestions if there is a better way to represent
    this information in the markdown table.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/12359
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Added
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    Added
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    /cc @atoulme who filed the feature request issue originally.
    
    Signed-off-by: ChrsMark <chrismarkou92@gmail.com>
