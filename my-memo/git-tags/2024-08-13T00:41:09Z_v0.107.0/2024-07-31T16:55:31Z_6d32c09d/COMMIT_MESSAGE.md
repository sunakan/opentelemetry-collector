commit 6d32c09daf9f91ec0dc35c45732e168663dfda10
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Jul 31 10:55:31 2024 -0600

    [component] Move component status reporting public API to new componentstatus module (#10730)
    
    #### Description
    
    Duplicates component status reporting features from `component` into a
    separate module, `componentstatus`. In a future PR, when
    `component.TelemetrySettings.ReportStatus` is removed, I'll update Core
    to depend on `componentstatus`.
    
    This work isolates component status public API from `component` and
    `extensions`, which will allow us to move forward with their 1.0 work
    while component status reporting matures.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/10725
    
    ---------
    
    Co-authored-by: Matthew Wear <matthew.wear@gmail.com>
