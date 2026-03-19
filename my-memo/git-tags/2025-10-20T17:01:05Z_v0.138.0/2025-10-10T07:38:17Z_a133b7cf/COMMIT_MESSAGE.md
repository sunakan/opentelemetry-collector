commit a133b7cf74eb3a2e4ed9101efb518cfb60536b90
Author: Joshua MacDonald <jmacd@users.noreply.github.com>
Date:   Fri Oct 10 00:38:17 2025 -0700

    Revise the print-config command (#13679)
    
    #### Description
    
    See #12369, #11775.
    
    Fixes #13278.
    
    cc/ @VihasMakwana
    
    This refines the print-config command with two modes, "redacted" and
    "unredacted", with an optional "--validate" or no, with optional
    --format=yaml or json.
    
    #### Link to tracking issue
    Fixes #11775.
    
    #### Testing
    
    ✔️
    
    #### Documentation
    
    ✔️
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
