commit 586631bec137e0e091beed481c2287aab8dc8f7d
Author: Curtis Robert <crobert@splunk.com>
Date:   Mon Feb 12 15:45:43 2024 -0800

    [chore][Makefile.Common] Enable make commands to run on individual packages (#9536)
    
    This is a QOL improvement. As shown in the testing section, existing
    `make` commands that rely on tools don't work in sub-packages. The issue
    was that the path reference for the tools dir was the current directory,
    instead of the repo's root dir. This updates the path to the tools dir
    to be from the root path instead of the current directory.
    
    This now matches
    [contrib](https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/2c870cebf0f1a4c02a0fc493db686f6422f8a23a/Makefile.Common#L22).
    
    **Testing:**
    Before:
    ```
    crobert$ ~/dev/opentelemetry-collector/receiver/otlpreceiver $ make fmt
    /bin/bash: /Users/crobert/dev/opentelemetry-collector/receiver/otlpreceiver/internal/tools/tools.go: No such file or directory
    make: *** No rule to make target `/Users/crobert/dev/opentelemetry-collector/receiver/otlpreceiver/.tools/goimports', needed by `fmt'.  Stop.
    crobert$ ~/dev/opentelemetry-collector/receiver/otlpreceiver $ make impi
    /bin/bash: /Users/crobert/dev/opentelemetry-collector/receiver/otlpreceiver/internal/tools/tools.go: No such file or directory
    make: *** No rule to make target `/Users/crobert/dev/opentelemetry-collector/receiver/otlpreceiver/.tools/impi', needed by `impi'.  Stop.
    crobert$ ~/dev/opentelemetry-collector/receiver/otlpreceiver $ make install-tools
    /bin/bash: /Users/crobert/dev/opentelemetry-collector/receiver/otlpreceiver/internal/tools/tools.go: No such file or directory
    make: Nothing to be done for `install-tools'.
    ```
    
    After:
    ```
    crobert$ ~/dev/opentelemetry-collector/receiver/otlpreceiver $ make fmt
    cd /Users/crobert/dev/opentelemetry-collector/internal/tools && go build -o /Users/crobert/dev/opentelemetry-collector/.tools/goimports -trimpath golang.org/x/tools/cmd/goimports
    gofmt -w -s ./
    /Users/crobert/dev/opentelemetry-collector/.tools/goimports -w  -local go.opentelemetry.io/collector ./
    crobert$ ~/dev/opentelemetry-collector/receiver/otlpreceiver $ make impi
    crobert$ ~/dev/opentelemetry-collector/receiver/otlpreceiver $ make install-tools
    cd /Users/crobert/dev/opentelemetry-collector/internal/tools && go build -o /Users/crobert/dev/opentelemetry-collector/.tools/envsubst -trimpath github.com/a8m/envsubst/cmd/envsubst
    cd /Users/crobert/dev/opentelemetry-collector/internal/tools && go build -o /Users/crobert/dev/opentelemetry-collector/.tools/misspell -trimpath github.com/client9/misspell/cmd/misspell
    cd /Users/crobert/dev/opentelemetry-collector/internal/tools && go build -o /Users/crobert/dev/opentelemetry-collector/.tools/golangci-lint -trimpath github.com/golangci/golangci-lint/cmd/golangci-lint
    # github.com/golangci/golangci-lint/cmd/golangci-lint
    ld: warning: -bind_at_load is deprecated on macOS
    cd /Users/crobert/dev/opentelemetry-collector/internal/tools && go build -o /Users/crobert/dev/opentelemetry-collector/.tools/addlicense -trimpath github.com/google/addlicense
    cd /Users/crobert/dev/opentelemetry-collector/internal/tools && go build -o /Users/crobert/dev/opentelemetry-collector/.tools/porto -trimpath github.com/jcchavezs/porto/cmd/porto
    cd /Users/crobert/dev/opentelemetry-collector/internal/tools && go build -o /Users/crobert/dev/opentelemetry-collector/.tools/checkfile -trimpath go.opentelemetry.io/build-tools/checkfile
    cd /Users/crobert/dev/opentelemetry-collector/internal/tools && go build -o /Users/crobert/dev/opentelemetry-collector/.tools/chloggen -trimpath go.opentelemetry.io/build-tools/chloggen
    cd /Users/crobert/dev/opentelemetry-collector/internal/tools && go build -o /Users/crobert/dev/opentelemetry-collector/.tools/crosslink -trimpath go.opentelemetry.io/build-tools/crosslink
    cd /Users/crobert/dev/opentelemetry-collector/internal/tools && go build -o /Users/crobert/dev/opentelemetry-collector/.tools/multimod -trimpath go.opentelemetry.io/build-tools/multimod
    cd /Users/crobert/dev/opentelemetry-collector/internal/tools && go build -o /Users/crobert/dev/opentelemetry-collector/.tools/semconvgen -trimpath go.opentelemetry.io/build-tools/semconvgen
    cd /Users/crobert/dev/opentelemetry-collector/internal/tools && go build -o /Users/crobert/dev/opentelemetry-collector/.tools/apidiff -trimpath golang.org/x/exp/cmd/apidiff
    cd /Users/crobert/dev/opentelemetry-collector/internal/tools && go build -o /Users/crobert/dev/opentelemetry-collector/.tools/govulncheck -trimpath golang.org/x/vuln/cmd/govulncheck
    
    ```
