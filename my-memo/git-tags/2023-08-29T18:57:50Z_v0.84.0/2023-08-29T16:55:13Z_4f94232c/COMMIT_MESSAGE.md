commit 4f94232c20a97fa441858503a9b527f123a18c89
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Aug 29 09:55:13 2023 -0700

    [chore] [cmd/builder] Require github.com/knadh/koanf submodules (#8301)
    
    Explicitly require `github.com/knadh/koanf/maps` and
    `github.com/knadh/koanf/providers/confmap` in go.mod to workaround
    ambiguous imports. Otherwise, the command fails with:
    ```
    Error: failed to update go.mod: exit status 1. Output:
    go: github.com/open-telemetry/opentelemetry-collector-contrib/cmd/otelcontribcol imports
            github.com/open-telemetry/opentelemetry-collector-contrib/connector/countconnector imports
            go.opentelemetry.io/collector/confmap imports
            github.com/knadh/koanf/maps: ambiguous import: found package github.com/knadh/koanf/maps in multiple modules:
            github.com/knadh/koanf v1.5.0 (/Users/danoshin/go/pkg/mod/github.com/knadh/koanf@v1.5.0/maps)
            github.com/knadh/koanf/maps v0.1.1 (/Users/danoshin/go/pkg/mod/github.com/knadh/koanf/maps@v0.1.1)
    go: github.com/open-telemetry/opentelemetry-collector-contrib/cmd/otelcontribcol imports
            github.com/open-telemetry/opentelemetry-collector-contrib/connector/countconnector imports
            go.opentelemetry.io/collector/confmap imports
            github.com/knadh/koanf/providers/confmap: ambiguous import: found package github.com/knadh/koanf/providers/confmap in multiple modules:
            github.com/knadh/koanf v1.5.0 (/Users/danoshin/go/pkg/mod/github.com/knadh/koanf@v1.5.0/providers/confmap)
            github.com/knadh/koanf/providers/confmap v0.1.0 (/Users/danoshin/go/pkg/mod/github.com/knadh/koanf/providers/confmap@v0.1.0)
    
    make: *** [genotelcontribcol] Error 1
    ```
