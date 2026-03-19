commit e83049846dcabf9b5e286e78eb4e1a31dc5ec0e8
Author: Mateusz Urbanek <mateusz.urbanek.98@gmail.com>
Date:   Fri Jul 25 10:23:47 2025 +0200

    Add riscv64 arch (#13458)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    New Tier 3 platform: `riscv64` architecture is now included, allowing
    the collector to be built and distributed for this platform.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #13462
    X-Ref:
    https://github.com/open-telemetry/opentelemetry-collector-releases/pull/969
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    I’ve performed basic compilation as well as starting collector inside a
    linux/riscv64 container (`docker.io/riscv64/debian`).
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    Added myself as a contact point to `platform-support.md` document.
    
    ---------
    
    Signed-off-by: Mateusz Urbanek <mateusz.urbanek.98@gmail.com>
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
