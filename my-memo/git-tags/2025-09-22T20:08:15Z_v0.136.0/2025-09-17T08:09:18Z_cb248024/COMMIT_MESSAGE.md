commit cb248024c9f5a2160aede53534705efa0a0bb4fb
Author: Vihas Makwana <121151420+VihasMakwana@users.noreply.github.com>
Date:   Wed Sep 17 13:39:18 2025 +0530

    [chore][RFC] - Configuration Merging revamped (#13256)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This RFC is a follow-up of
    https://github.com/open-telemetry/opentelemetry-collector/pull/12097.
    The first PR introduced the feature gate to merge the components' lists
    and left out the options to configure the merging behaviour.
    
    This RFC proposes an approach to extend the current behaviour by
    enabling merging of specified config parts and support different modes.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Relates:
    - https://github.com/open-telemetry/opentelemetry-collector/issues/8754
    - https://github.com/open-telemetry/opentelemetry-collector/issues/8394
    - https://github.com/open-telemetry/opentelemetry-collector/issues/10370
    
    
    Thanks to @mx-psi @dmitryax and @evan-bradley for their feedback on the
    [first
    PR](https://github.com/open-telemetry/opentelemetry-collector/pull/12097)!!
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
    Co-authored-by: Hélia Barroso <66432275+heliapb@users.noreply.github.com>
