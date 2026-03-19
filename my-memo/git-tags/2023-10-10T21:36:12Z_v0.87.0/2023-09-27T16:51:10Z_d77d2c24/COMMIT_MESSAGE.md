commit d77d2c2408af212ee8f921eb0215aeee80540c43
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Sep 27 09:51:10 2023 -0700

    [chore] [pdata] don't generate a cycle import in the internal package (#8552)
    
    To avoid warnings thrown by `make genpdata`:
    ```
    go run pdata/internal/cmd/pdatagen/main.go
    /Library/Developer/CommandLineTools/usr/bin/make fmt
    package go.opentelemetry.io/collector/internal/fanoutconsumer
            imports go.opentelemetry.io/collector/component
            imports go.opentelemetry.io/collector/pdata/pcommon
            imports go.opentelemetry.io/collector/pdata/internal
            imports go.opentelemetry.io/collector/pdata/internal: import cycle not allowed
    package go.opentelemetry.io/collector/internal/fanoutconsumer
            imports go.opentelemetry.io/collector/component
            imports go.opentelemetry.io/collector/pdata/pcommon
            imports go.opentelemetry.io/collector/pdata/internal
            imports go.opentelemetry.io/collector/pdata/internal: import cycle not allowed
    ```
    
    The invalid imports are removed by `go fmt` after that anyway, but it's
    still annoying.
