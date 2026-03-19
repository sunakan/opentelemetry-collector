commit c3a11297650a410148b974a96d374c61fe816181
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri Jul 26 11:50:34 2024 -0600

    Deprecate component.Host.GetFactory (#10709)
    
    #### Description
    This PR deprecates the `component.Host.GetFactory` interface. This has
    the benefit of keeping the `component.Host` interface as simple as
    possible. Components that were relying on this method can instead check
    if the underlying `component.Host` implementation supports the
    interface. An example of this pattern can be found here:
    https://github.com/open-telemetry/opentelemetry-collector/blob/91f13c309d00eef5b997a2e810effb2a4ccd95d4/extension/zpagesextension/zpagesextension.go#L58-L66
    
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/9511
