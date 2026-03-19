commit 4b6b865388016b4ec0f9e38402b4b22aac8ddb50
Author: syed owais <syedowais312sf@gmail.com>
Date:   Fri Jan 9 01:58:11 2026 +0530

    builder: avoid duplicate CLI error logging in generated main (#14317)
    
    ### Problem
    
    When running an invalid CLI command (for example `otelcorecol foo`),
    Cobra already prints a user-facing error message.
    
    However, the builder-generated `main.go` also logs the same error using
    `log.Fatalf`, which results in duplicate error output.
    
    ### Solution
    
    This change updates the builder template to:
    - remove `log.Fatalf` from `main()`
    - exit with a non-zero status using `os.Exit(1)`
    - allow Cobra to fully own CLI error output
    
    ### Result
    
    **Before**
    
    ```
    Error: unknown command "foo" for "otelcorecol"
    Run 'otelcorecol --help' for usage.
    collector server run finished with error: unknown command "foo" for "otelcorecol"
    ```
    
    **After**
    ```
    Error: unknown command "foo" for "otelcorecol"
    Run 'otelcorecol --help' for usage.
    ```
    
    ### Notes
    
    - Change is limited to
    `cmd/builder/internal/builder/templates/main.go.tmpl`
    - No behavior change for successful execution paths
    - Exit code behavior remains unchanged
    
    **Closes:** #14302
