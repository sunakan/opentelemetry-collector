commit 2c2a27aaf1715420ef94e0212b7618792d7fb86b
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Aug 23 11:46:50 2023 -0700

    [chore] [config/confighttp] Remove loop memory aliasing in a test (#8269)
    
    To resolve a linter complain after bumping
    github.com/golangci/golangci-lint:
    https://github.com/open-telemetry/opentelemetry-collector/actions/runs/5947424448/job/16129479734?pr=8268
    
    ```
    Error: confighttp_test.go:711:15: G601: Implicit memory aliasing in for loop. (gosec)
                                    CORS:     &tt.CORSSettings,
    ```
