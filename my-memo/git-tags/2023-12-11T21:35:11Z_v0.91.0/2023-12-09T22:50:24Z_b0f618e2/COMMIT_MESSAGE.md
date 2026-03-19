commit b0f618e21de14af902a587efc90e036680b97617
Author: Takumi Katase <50615605+devoc09@users.noreply.github.com>
Date:   Sun Dec 10 07:50:24 2023 +0900

    refactor(builder): change output of `version` subcommand. (#8994)
    
    With this change, running `builder version` on binaries installed with
    `go install` will output the version specified at the suffix.
    
    If it's under development, the following output will be obtained.
    ```
    $ GO111MODULE=on CGO_ENABLED=0 go run . version
    ocb version (devel)
    ```
    
    **Link to tracking Issue:** #8770
    
    ---------
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
