commit 0f6c304b2cb51d98623a3e64364012882068da78
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Thu Feb 13 23:21:16 2025 +0100

    [chore] Enable `generate-contrib` step in `check-contrib` (#12371)
    
    #### Description
    
    This PR enables the `make generate-contrib` step in `make check-contrib`
    originally introduced in #11670, which allows testing the latest version
    of the mdatagen against contrib. It had been disabled as initial
    remediation against #11795, which has since been resolved by making
    `make gotidy` on contrib tidy modules in topological order.
    
    #### Link to tracking issue
    Fixes #11167
    
    #### Testing
    Modifying `mdatagen` locally to crash on startup causes `make
    check-contrib` to fail.
