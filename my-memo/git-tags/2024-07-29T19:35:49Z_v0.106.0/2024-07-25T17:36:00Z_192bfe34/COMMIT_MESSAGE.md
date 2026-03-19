commit 192bfe344482e94c44393f5c3c455fa6f6762913
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Jul 25 19:36:00 2024 +0200

    [chore][component] Document component.Host expectations (#10720)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Adds a note to the `component.Host` interface documenting that
    components may require additional interfaces.
    I think this is the only sustainable pattern post 1.0, since we won't be
    able to add any new methods to the `component.Host` interface.
    
    This pattern is also used today by:
    - The zpages extension
    (https://github.com/open-telemetry/opentelemetry-collector/blob/91f13c309d00eef5b997a2e810effb2a4ccd95d4/extension/zpagesextension/zpagesextension.go#L58-L66)
    - The receiver creator (after
    open-telemetry/opentelemetry-collector-contrib/pull/34234)
    - Some contrib components
    (open-telemetry/opentelemetry-collector-contrib/pull/32498)
    
    #### Link to tracking issue
    
    Fixes #10181
