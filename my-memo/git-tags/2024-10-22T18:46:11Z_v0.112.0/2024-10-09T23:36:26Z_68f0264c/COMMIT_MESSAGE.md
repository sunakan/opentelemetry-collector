commit 68f0264c97639cfe79b5077e7433779812aa0d1c
Author: Matthew Wear <matthew.wear@gmail.com>
Date:   Wed Oct 9 16:36:26 2024 -0700

    [service/internal] Remove Ready from status.Reporter (#10941)
    
    #### Description
    This PR removes the `Ready` method from `status.Reporter`. This check
    was necessary when `ReportStatus` was on `TelemetrySettings` as it
    should not be called until component start-time, but was available to a
    component at create-time. This method now resides on `host` which is not
    available until component start, making this check unnecessary. This is
    an internal refactor that should not affect any other users. I'm not
    sure if this needs a changelog, but I generated one anyways and set the
    type to breaking, as it removes a method from an interface.
    
    #### Link to tracking issue
    Fixes #10792
    
    #### Testing
    Units
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
