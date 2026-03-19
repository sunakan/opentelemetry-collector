commit 1e4e968470b31cab47969080c404aaf65870526c
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Wed May 22 11:12:49 2024 -0700

    [chore] update lint configuration (#10209)
    
    This addresses some of the following warnings:
    
    ```
    WARN [config_reader] The configuration option `run.skip-dirs` is deprecated, please use `issues.exclude-dirs`.
    WARN [config_reader] The configuration option `run.skip-dirs-use-default` is deprecated, please use `issues.exclude-dirs-use-default`.
    WARN [config_reader] The configuration option `output.format` is deprecated, please use `output.formats`
    WARN [config_reader] The configuration option `linters.govet.check-shadowing` is deprecated. Please enable `shadow` instead, if you are not using `enable-all`.
    WARN [config_reader] The configuration option `linters.errcheck.ignore` is deprecated, please use `linters.errcheck.exclude-functions`.
    ```
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
