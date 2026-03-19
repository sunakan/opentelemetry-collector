commit f8b1c652a2efbd64cb5da7f6cd98f579c14d99b2
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Tue Dec 12 09:29:51 2023 -0800

    Fix detection if the collector is running as service on Windows (#9042)
    
    **Description:**
    Fix run as a service detection on Windows. Instead of trying to detect
    if it is a service or not, for which both `svc.IsAnInteractiveSession()`
    and `svc.IsWindowsService()` are somehow broken, try to run as a Windows
    service, if that fails fallback to run as an interactive process. This
    follows a recommendation of the Windows [service API
    documentation](https://learn.microsoft.com/en-us/windows/win32/api/winsvc/nf-winsvc-startservicectrldispatchera#return-value).
    The new code calls `svc.Run` and in case of error checks for
    `windows.ERROR_FAILED_SERVICE_CONTROLLER_CONNECT`. If this is the error
    the application can safely assume that it is not running as a service.
    
    The duration of a call to `svc.Run` failing with this error was below 3
    microseconds in the current GH runner and below 5 microseconds on my
    box. While this value seems fine for startup I'm keeping the
    `NO_WINDOWS_SERVICE` option instead of deprecating it (it doesn't seem
    worth the trouble of deprecating it).
    
    **Link to tracking Issue:**
    Fix #7350
    
    **Testing:**
    Fix tested on the Splunk fork that deploys the collector as a service
    and as an interactive process on Windows containers.
    
    **Documentation:**
    Added changelog.
