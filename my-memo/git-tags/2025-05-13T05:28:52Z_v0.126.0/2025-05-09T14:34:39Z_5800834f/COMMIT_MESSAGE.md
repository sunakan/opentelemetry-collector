commit 5800834fbac45f07f909aaa747a9794a5948ec59
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri May 9 16:34:39 2025 +0200

    [chore] Make mapstructure hooks safe against untyped nils (#13001)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    If we enable `DecodeNil` as true, we may have [untyped
    nils](https://go.dev/doc/faq#nil_error) being passed. Unfortunately,
    these are not valid values for `reflect`, which leads to surprising
    behavior such as golang/go/issues/51649.
    
    Unfortunately, the default hooks from mapstructure do not deal with this
    properly. To account for this, we:
    - Vendor and change the `ComposeDecodeHookFunc` function so that this
    case is accounted for the kinds of hooks that just won't work with
    untyped nils
    - Create a safe wrapper for the hooks that do work with untyped nils.
    This wrapper is used in all hooks, but in the interest of keeping as
    close to what I would imagine upstream will accept, I did not add this
    to the compose function.
    
    This should not have any end-user observable behavior.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    Attempt to work around
    https://github.com/open-telemetry/opentelemetry-collector/pull/12996#issuecomment-2862859367
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
