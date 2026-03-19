commit 352970729c18cad5e89898b3ca64ac75794d907c
Author: Vaibhav Yadav <64212458+vky5@users.noreply.github.com>
Date:   Mon Jul 28 22:08:30 2025 +0530

    docs: add testable examples for component.ID and component.Type Closes Issue #13146 (#13430)
    
    #### Description
    
    Adds testable examples for `component.ID` and `component.Type` to
    improve the documentation rendered on
    [pkg.go.dev](https://pkg.go.dev/go.opentelemetry.io/collector/component).
    These examples demonstrate how to construct and use these types in a
    simple and idiomatic way, per the Go documentation guidelines.
    
    #### Link to tracking issue
    Fixes #13146
    
    #### Testing
    Testable examples were added in `component/identifiable_example_test.go`
    and verified using:
    
    ```
    cd component/
    go test ./... -v
    ```
    
    ---------
    
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
