commit 8b99b8023ca3737570144eded73dc57ffe045b0d
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Fri Nov 15 17:56:26 2024 +0100

    [chore] Generate `replace` directives automatically in `check-contrib` (#11683)
    
    #### Description
    
    `make check-contrib` use `go mod edit` to allow running the
    `opentelemetry-collector-contrib` unit tests against the local version
    of the core libraries. It also removes the `replace` statements after
    tests have been run. At the moment, this is done with two long
    handwritten `go mod edit` commands. But this very easily gets
    out-of-date: for reference, we currently only `-replace` 70 modules out
    of the 73 in versions.yaml, and only `-dropreplace` 63 out of _those_.
    
    This PR changes the `Makefile` to programatically generate the commands,
    to avoid needing to keep them up to date.
    
    This was split off from PR #11670.
    
    You can check the output in the `contrib-tests` CI job output.
