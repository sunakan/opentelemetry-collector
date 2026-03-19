commit 854dbf9944fc3c3e6abae9b7b2f6846cc34e4cc0
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Nov 21 01:35:48 2024 -0700

    [chore][VERSIONING.md] Document approach to optional experimental interfaces (#11482)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Documents the approach we have taken for adding experimental
    functionality to interfaces. We take this approach with:
    
    - `receiver.Factory`, may implement the
    [`receiverprofiles.Factory`](https://pkg.go.dev/go.opentelemetry.io/collector/receiver/receiverprofiles#Factory)
    optional interface (similar for other pipeline components)
    - `component.Host` may implement the
    [`componentstatus.Reporter`](https://pkg.go.dev/go.opentelemetry.io/collector/component/componentstatus#Reporter)
    optional interface.
    - `extension.Extension` may implement the optional interfaces in
    [`extensioncapabilities`](https://pkg.go.dev/go.opentelemetry.io/collector/extension/extensioncapabilities).
    
    In these cases we reserve the right to change the optional, experimental
    parts of the underlying struct we return. You can also check whether you
    are using experimental functionality by checking your `go.mod` and
    seeing if you use one of these experimental modules.
