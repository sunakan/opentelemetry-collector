commit 1c7715cbfd95e82701de757cd58e8f73ff8246e7
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue May 21 14:33:43 2024 -0400

    [chore][cmd/builder] Improve missing replace statements test (#10196)
    
    Updates `TestReplaceStatementsAreComplete` to check the modules used in
    replace statements to ensure that their dependencies also have replace
    statements. This will catch the error that happened in #10188 before a
    release is started.
    
    The one caveat here is that the test may need to be run multiple times
    if there are modules deep in the dependency tree that haven't been added
    to the list of replace statement modules. In essence, the user has to do
    a BFS walk of the dependency tree themselves by running the tests until
    all missing modules are caught. We could automate this process with
    additional code to report all missing modules at once regardless of
    depth, but I figure it's not worth the extra complexity in the test for
    such a small gain.
    
    #### Testing
    
    I tested this on the #10188 branch by removing the `pdata/testdata`
    module from the replace statements list and seeing that the failure is
    easier to understand:
    
    ```
    --- FAIL: TestReplaceStatementsAreComplete (0.60s)
                    Error:          Should be true
                    Test:           TestReplaceStatementsAreComplete
                    Messages:       Module missing from replace statements list: go.opentelemetry.io/collector/pdata/testdata
    ```
