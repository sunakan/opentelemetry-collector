commit 349b84b059e52bd152829ee90422c5f897763a76
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Fri Jan 31 07:24:19 2025 -0500

    [component] Print path to error in `ValidateConfig` (#12108)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Follow up to
    https://github.com/open-telemetry/opentelemetry-collector/pull/12102.
    
    This prints the full path to where the error occurred in a config object
    using available reflection metadata. Currently some paths will be
    duplicated until we shift otelcol to call `component.ValidateConfig` on
    `otelcol.Config` and remove manual calls to `Validate`, but no
    information will be missing. If this is a concern we can do both steps
    at once.
    
    Example error messages:
    
    ```
    collector server run finished with error: invalid configuration: receivers::otlp: must specify at least one protocol when using the OTLP receiver
    service::telemetry: collector telemetry metrics reader should exist when metric level is not None, level is Normal
    ```
    
    I'll clean this PR up once
    https://github.com/open-telemetry/opentelemetry-collector/pull/12102 is
    merged, but you can see the latest commit for the changes relevant to
    only this PR.
    
    ---------
    
    Co-authored-by: Evan Bradley <evan-bradley@users.noreply.github.com>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
