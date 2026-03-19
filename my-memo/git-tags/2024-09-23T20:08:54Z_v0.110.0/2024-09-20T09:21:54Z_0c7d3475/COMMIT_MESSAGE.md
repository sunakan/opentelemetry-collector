commit 0c7d3475dd68268fd5c4e3ac7f878fb5cd026174
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri Sep 20 03:21:54 2024 -0600

    [chore] Add pipeline module (#11209)
    
    #### Description
    To facilitate the work in
    https://github.com/open-telemetry/opentelemetry-collector/pull/11204 as
    some breaking changes and some deprecations, this PR adds the new
    pipeline module separately so that future PRs can handle the breaking
    changes and deprecations.
    
    In order to make `Signal` uninstantiable outside of this repo, while
    still being extendable in places like `componentprofiles`, a new
    internal module is added to handle the `Signal` logic. To reduce the
    dependency sprawl that would happen if `signal` was an internal package
    in `go.opentelemetry.io/collector`, I made it a module, similar to
    `globalgates`.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/10947
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Added unit tests
    
    <!--Describe the documentation added.-->
    #### Documentation
    Added godoc comments
