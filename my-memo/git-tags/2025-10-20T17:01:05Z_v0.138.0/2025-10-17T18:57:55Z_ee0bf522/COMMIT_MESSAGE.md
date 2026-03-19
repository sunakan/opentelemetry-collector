commit ee0bf522ea7c2f60b49332ce3a08dcec4ed8e2c1
Author: Paulo Dias <44772900+paulojmdias@users.noreply.github.com>
Date:   Fri Oct 17 19:57:55 2025 +0100

    [cmd/mdatagen] Add lint/ordering validation for metadata.yaml (#13782)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Extend mdatagen to validate that keys in metadata.yaml files are
    alphabetically sorted (resource_attributes, attributes, metrics, events,
    and telemetry.metrics).
    
    The idea came from
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/42477#discussion_r2323361702
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #13781
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    I added tests to validate unordered data and expect an error on it.
    
    ```sh
    ❯ mdatagen metadata.yaml
    Error: metadata.yaml ordering check failed: [telemetry metrics] keys are not sorted: [metric1 metric0]
    Error: metadata.yaml ordering check failed: [telemetry metrics] keys are not sorted: [metric1 metric0]
    ```
    
    ```sh
    ❯ mdatagen metadata.yaml
    Error: metadata.yaml ordering check failed: [resource_attributes] keys are not sorted: [cloud.region cloud.availability_zone cloud.provider host.id host.name]
    Error: metadata.yaml ordering check failed: [resource_attributes] keys are not sorted: [cloud.region cloud.availability_zone cloud.provider host.id host.name]
    ```
    
    ---------
    
    Signed-off-by: Paulo Dias <paulodias.gm@gmail.com>
