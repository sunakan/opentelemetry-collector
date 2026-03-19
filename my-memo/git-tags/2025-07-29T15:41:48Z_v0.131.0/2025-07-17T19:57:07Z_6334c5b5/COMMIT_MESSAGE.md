commit 6334c5b5ac64a9fe638627ef2b6bcdbe2362fbac
Author: Israel Blancas <iblancasa@gmail.com>
Date:   Thu Jul 17 21:57:07 2025 +0200

    Avoid the exporter for being stuck when telemetry data is bigger than batch.max_size (#12982)
    
    #### Description
    This change fixes a bug where the exporter would get stuck when the
    telemetry data is bigger than batch.max_size. The bug was causing the
    OpenTelemetry Collector to hang and being OOM Killed at some point.
    
    #### Link to tracking issue
    Fixes #12893
    
    Signed-off-by: Israel Blancas <iblancasa@gmail.com>
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
