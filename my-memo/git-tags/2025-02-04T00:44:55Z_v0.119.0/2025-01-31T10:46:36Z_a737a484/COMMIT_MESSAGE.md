commit a737a48402e00bb069d70ddf02f21b11b9e7a6cb
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Jan 31 10:46:36 2025 +0000

    [component] Make component.Kind a struct (#12214)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    Changes the underlying type of `component.Kind` to be closer to
    [`pipeline.Signal`](https://pkg.go.dev/go.opentelemetry.io/collector/pipeline#Signal).
    Right now the type is defined within `component`, but it could be moved
    to an internal module so that we could have a different module exposing
    other value on this enum.
    
    This is already doable today, the only thing this PR gives us is
    1. slightly more flexibility on things like making the concept of kind
    more complex (e.g. adding an adjective to a kind).
    2. restricting external consumers from implementing their own component
    kinds without our explicit approval (with some kind of API we design)
    
    I am not convinced this is _necessary_ to do, but we may as well do it.
    
    This is technically a breaking change since `component.Kind(42)` was a
    valid expression and it no longer is. I think this is extremely rare, so
    I suggest if we go ahead we do so in one go.
    
    #### Link to tracking issue
    Fixes #11443
