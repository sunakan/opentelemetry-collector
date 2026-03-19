commit 433f7aef923a74df12fb09ef4aadf51028b53ef5
Author: Matthew Wear <matthew.wear@gmail.com>
Date:   Tue Nov 28 12:43:32 2023 -0800

    Automate status reporting on start (#8836)
    
    This is part of the continued component status reporting effort.
    Currently we have automated status reporting for the following component
    lifecycle events: `Starting`, `Stopping`, `Stopped` as well as
    definitive errors that occur in the starting or stopping process (e.g.
    as determined by an error return value). This leaves the responsibility
    to the component to report runtime status after start and before stop.
    We'd like to be able to extend the automatic status reporting to report
    `StatusOK` if `Start` completes without an error. One complication with
    this approach is that some components spawn async work (via goroutines)
    that, depending on the Go scheduler, can report status before `Start`
    returns. As such, we cannot assume a nil return value from `Start` means
    the component has started properly. The solution is to detect if the
    component has already reported status when start returns, if it has, we
    will use the component-reported status and will not automatically report
    status. If it hasn't, and `Start` returns without an error, we can
    report `StatusOK`. Any subsequent reports from the component (async or
    otherwise) will transition the component status accordingly.
    
    The tl;dr is that we cannot control the execution of async code, that's
    up to the Go scheduler, but we can handle the race, report the status
    based on the execution, and not clobber status reported from within the
    component during the startup process. That said, for components with
    async starts, you may see a `StatusOK` before the component-reported
    status, or just the component-reported status depending on the actual
    execution of the code. In both cases, the end status will be same.
    
    The work in this PR will allow us to simplify #8684 and #8788 and
    ultimately choose which direction we want to go for runtime status
    reporting.
    
    **Link to tracking Issue:** #7682
    
    **Testing:** units / manual
    
    ---------
    
    Co-authored-by: Alex Boten <aboten@lightstep.com>
