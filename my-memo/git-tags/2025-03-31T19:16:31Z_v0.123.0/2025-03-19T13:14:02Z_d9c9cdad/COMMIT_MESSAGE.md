commit d9c9cdad1032aef35191fab23a8fe6c3a5627ab9
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Wed Mar 19 14:14:02 2025 +0100

    Revert "fix(deps): update module github.com/prometheus/common to v0.63.0 (#12656)" (#12673)
    
    #### Description
    
    Contrib tests are currently failing on main with the following build
    error:
    ```
    Error: /home/runner/go/pkg/mod/github.com/prometheus/prometheus@v0.300.1/util/logging/file.go:42:23: undefined: promslog.AllowedFormat
    ```
    
    I believe this is because of the update in #12656: there is [a breaking
    change in `github.com/prometheus/common`
    0.63.0](https://github.com/prometheus/common/pull/754) that is
    incompatible with the version of `github.com/prometheus` used in some
    contrib modules. While the latter package [has been
    updated](https://github.com/prometheus/prometheus/pull/16210) on main,
    the updated version hasn't been released yet, so I this the only
    solution is to revert this PR until then.
