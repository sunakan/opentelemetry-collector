commit d5d1f82bc728d31d4e757f1c1573e754c335ebd1
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Aug 14 03:52:06 2024 -0600

    [chore] Refactor `service/host` into `service/internal/graph` (#10854)
    
    #### Description
    This is a prep PR to reduce the size of
    https://github.com/open-telemetry/opentelemetry-collector/pull/10777. As
    part of the work to make our `component.Host` implementation implement
    `componentstatus.Reporter` (see
    https://github.com/open-telemetry/opentelemetry-collector/pull/10852),
    the `host` struct and `graph` logic need to be closer together. This is
    because, as part of
    https://github.com/open-telemetry/opentelemetry-collector/pull/10777
    `StartAll` is changed to depend on our specific `Host` type instead of a
    `component.Host`. Our host already has a dependency on `graph`, so it
    can't be moved into its own module.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/10777
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/10413
