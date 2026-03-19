commit a80ce1a6052720c3ffeaa87a316508c1fd022b17
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Mon Aug 26 17:21:05 2024 -0600

    [chore] Try fixing flaky SharedInstance e2e test (#10929)
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10927.
    
    ` go test status_test.go --count 100` passed.
