commit 2962fe95f45fcc35866c9ad258bbe113468b9867
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Wed Oct 3 21:27:02 2018 -0700

    cmd/ocagent: added version command
    
    Added a `version` command to the CLI which
    will print out the information leading to when
    and how the binary was built. The fields printed
    out are:
    
    * Version: The version of ocagent itself
    * Goversion: The version of Go that compiled this binary
    * OS: The OS it was built for (runtime.GOOS)
    * Architecture: The architecture of the system
    * GitHash: The hash of the ocagent commit
    
    For example:
    ```shell
    Version      0.0.1
    GitHash      7ec3ea8
    Goversion    devel +62e5215a2a Thu Oct 4 04:08:08 2018 +0000
    OS           darwin
    Architecture amd64
    ```
    
    this will aid in:
    * easy bug diagnoses and fixes
    * plugin management whereby the exporter plugins MUST
    match the version of Go that ocagent was built with inorder
    for them to be application binary compatible
    * reproducible builds
    
    Also added a Makefile with a couple of directives
    that allow for cross-compilation too.
    
    Switched the flag parser from the inflexible "flag"
    package in favour of "github.com/spf13/cobra".
    
    Fixes #59
