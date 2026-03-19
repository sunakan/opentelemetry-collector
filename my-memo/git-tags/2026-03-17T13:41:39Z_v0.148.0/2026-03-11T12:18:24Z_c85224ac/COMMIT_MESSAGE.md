commit c85224ac4dc8db153e7cc57971779a8c5ff303db
Author: Florian Lehner <florianl@users.noreply.github.com>
Date:   Wed Mar 11 13:18:24 2026 +0100

    [pdata/pprofile] Add reference based attributes support (#14546)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Draft implementation for
    https://github.com/open-telemetry/opentelemetry-proto/pull/733 that
    shows the transparent conversion between reference based attributes and
    pdata API.
    
    With
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/46331
    there is the respective change that fixes the failing tests in
    connector/countconnector.
    
    FYI: @open-telemetry/profiling-approvers @tigrannajaryan @bogdandrutu
    
    ---------
    
    Signed-off-by: Florian Lehner <florian.lehner@elastic.co>
    Co-authored-by: Felix Geisendörfer <felix.geisendoerfer@datadoghq.com>
