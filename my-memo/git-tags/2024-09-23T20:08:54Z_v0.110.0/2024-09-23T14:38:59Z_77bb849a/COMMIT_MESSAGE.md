commit 77bb849aa07eb984ddd95b8ef06b411b704307c9
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Mon Sep 23 08:38:59 2024 -0600

    [component] Refactor to use pipeline.ID and pipeline.Signal (#11204)
    
    #### Description
    Depends on
    https://github.com/open-telemetry/opentelemetry-collector/pull/11209
    
    This PR is a non-breaking implementation of
    https://github.com/open-telemetry/opentelemetry-collector/pull/10947. It
    adds a new module, `pipeline`, which houses a `pipeline.ID` and
    `pipeline.Signal`. `pipeline.ID` is used to identify a pipeline within
    the service. `pipeline.Signal` is uses to identify the signal associated
    to a pipeline.
    
    I do this work begrudgingly. As the PR shows, this is a huge refactor
    when done in a non-breaking way, will require 3 full releases, and
    doesn't benefit our [End Users or, in my opinion, our Component
    Developers or Collector Library
    Users](https://github.com/open-telemetry/opentelemetry-collector/blob/main/CONTRIBUTING.md#target-audiences).
    I view this refactor as a Nice-To-Have, not a requirement for Component
    1.0.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Works towards
    https://github.com/open-telemetry/opentelemetry-collector/issues/9429
