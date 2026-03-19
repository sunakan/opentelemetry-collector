commit 0885401136ff87cf27d696a69372a75e8395ca5e
Author: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
Date:   Thu Mar 13 11:07:24 2025 +0100

    [chore] Fix OCB snapshot workflow (#12622)
    
    This PR fixes a few minor things in the OCB release test workflow:
    - fix triggers on OCB changes
    - remove non-existent log output inside the GH issue generation step
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/12624
    
    ---------
    
    Signed-off-by: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
