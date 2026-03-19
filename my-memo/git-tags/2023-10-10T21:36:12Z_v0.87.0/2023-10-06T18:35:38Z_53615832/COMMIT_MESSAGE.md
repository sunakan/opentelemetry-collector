commit 53615832e65416a89667611481b8765ab244021c
Author: Matthew Wear <matthew.wear@gmail.com>
Date:   Fri Oct 6 11:35:38 2023 -0700

    Component Status Reporting (#8169)
    
    This PR introduces component status reporting. There have been several
    attempts to introduce this functionality previously, with the most
    recent being: #6560.
    
    This PR was orignally based off of #6560, but has evolved based on the
    feedback received and some additional enhancements to improve the ease
    of use of the `ReportComponentStatus` API.
    
    In earlier discussions (see
    https://github.com/open-telemetry/opentelemetry-collector/pull/8169#issuecomment-1668367246)
    we decided to model status as a finite state machine with the following
    statuses: `Starting`, `OK`, `RecoverableError`, `PermanentError`,
    `FatalError`. `Stopping`, and `Stopped`. A benefit of this design is
    that `StatusWatcher`s will be notified on changes in status rather than
    on potentially repetitive reports of the same status.
    
    With the additional statuses and modeling them using a finite state
    machine, there are more statuses to report. Rather than having each
    component be responsible for reporting all of the statuses, I automated
    status reporting where possible. A component's status will automatically
    be set to `Starting` at startup. If the components `Start` returns an
    error, the status will automatically be set to `PermanentError`. A
    component is expected to report `StatusOK` when it has successfully
    started (if it has successfully started) and from there can report
    changes in status as it runs. It will likely be a common scenario for
    components to transition between `StatusOK` and `StatusRecoverableError`
    during their lifetime. In extenuating circumstances they can transition
    into terminal states of `PermanentError` and `FatalError` (where a fatal
    error initiates collector shutdown). Additionally, during component
    Shutdown statuses are automatically reported where possible. A
    component's status is set to `Stopping` when Shutdown is initially
    called, if Shutdown returns an error, the status will be set to
    `PermanentError` if it does not return an error, the status is set to
    `Stopped`.
    
    In #6560 ReportComponentStatus was implemented on the `Host` interface.
    I found that few components use the Host interface, and none of them
    save a handle to it (to be used outside of the `start` method). I found
    that many components keep a handle to the `TelemetrySettings` that they
    are initialized with, and this seemed like a more natural, convenient
    place for the `ReportComponentStatus` API. I'm ultimately flexible on
    where this method resides, but feel that `TelemetrySettings` a more user
    friendly place for it.
    
    Regardless of where the `ReportComponentStatus` method resides (Host or
    TelemetrySettings), there is a difference in the method signature for
    the API based on whether it is used from the service or from a
    component. As the service is not bound to a specific component, it needs
    to take the `instanceID` of a component as a parameter, whereas the
    component version of the method already knows the `instanceID`. In #6560
    this led to having both `component.Host` and `servicehost.Host` versions
    of the Host interface to be used at the component or service levels. In
    this version, we have the same for TelemetrySettings. There is a
    `component.TelemetrySettings` and a `servicetelemetry.Settings` with the
    only difference being the method signature of `ReportComponentStatus`.
    
    Lastly, this PR sets up the machinery for report component status, and
    allows extensions to be `StatusWatcher`s, but it does not introduce any
    `StatusWatcher`s. We expect the OpAMP extension to be a `StatusWatcher`
    and use data from this system as part of its AgentHealth message (the
    message is currently being extended to accommodate more component level
    details). We also expect there to be a non-OpAMP `StatusWatcher`
    implementation, likely via the HealthCheck extension (or something
    similiar).
    
    **Link to tracking Issue:** #7682
    
    cc: @tigrannajaryan @djaglowski @evan-bradley
    
    ---------
    
    Co-authored-by: Tigran Najaryan <tnajaryan@splunk.com>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    Co-authored-by: Daniel Jaglowski <jaglows3@gmail.com>
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
    Co-authored-by: Alex Boten <aboten@lightstep.com>
