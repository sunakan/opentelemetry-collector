commit 9ef6356835b5dfb784f47f4455854136af3bac85
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon Jul 22 09:55:31 2024 -0700

    [processorhelper] update units for metrics (#10647)
    
    This updates units for processhelper's internal telemetry.
    
    Related #10556
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10651
    
    For this PR i updated `metadata.yaml` and ran `make gogenerate`, then
    `make -C processor test`
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
