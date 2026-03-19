commit e2aaa77d7aa2baf36b7a078751afd6200a515020
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri Sep 6 13:47:49 2024 -0600

    [chore] Fix flaky Test_ComponentStatusReporting_SharedInstance test (#11078)
    
    #### Description
    Try adding wait group to ensure `StatusOk` is reported before the call
    to `Shutdown`.
    
    Passed with `go test status_test.go --count 2000`
    
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10927
