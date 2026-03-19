commit 16ab931966b9b6dd2766945c6c5d46f69242fcbf
Author: Olivier G <52180542+ogaca-dd@users.noreply.github.com>
Date:   Tue Nov 19 18:33:10 2024 +0100

    Make sure flagValue.String() can be called even when flagValue is created by reflect.New (#11651)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Make sure `flagValue.String()` can be called even when flagValue is
    created by `reflect.New`
    
    ```go
    import (
            "flag"
            "log"
    
            "go.opentelemetry.io/collector/featuregate"
    )
    
    func main() {
            fs := new(flag.FlagSet)
    
            featuregate.GlobalRegistry().RegisterFlags(fs)
            if err := fs.Parse([]string{"--help"}); err != nil {
                    log.Fatalf("failed to parse flags: %v", err)
            }
    }
    ```
    
    Before this PR
    ```
    Usage:
      -feature-gates value
            Comma-delimited list of feature gate identifiers. Prefix with '-' to disable the feature. '+' or no prefix will enable the feature.
    
    panic calling String method on zero featuregate.flagValue for flag feature-gates: runtime error: invalid memory address or nil pointer dereference
    failed to parse flags: flag: help requested
    ```
    Note that there is a panic in the message.
    
    After this PR
    ```
    Usage:
      -feature-gates value
            Comma-delimited list of feature gate identifiers. Prefix with '-' to disable the feature. '+' or no prefix will enable the feature.
    failed to parse flags: flag: help requested
    ```
    
    ---------
    
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
