commit cb19e1d59f6f06110872de5387a58787c37b46c0
Author: Juliano Costa <juliano.costa@datadoghq.com>
Date:   Wed Oct 23 17:22:46 2024 +0200

    [debugexporter] Add support for profiles signal (#11494)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR adds Profiles support to the `debugexporter` component.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #11155.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Added tests to all modified modules:
    - `exporter/debugexporter/exporter_test.go`
    - `exporter/debugexporter/factory_test.go`
    - `exporter/debugexporter/internal/normal/profiles_test.go`
