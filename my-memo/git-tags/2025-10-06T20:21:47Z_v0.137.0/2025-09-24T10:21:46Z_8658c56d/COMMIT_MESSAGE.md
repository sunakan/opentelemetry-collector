commit 8658c56dcbb9f1c0830506ba4dc8e52858aff23a
Author: Marin Atanasov Nikolov <dnaeon@gmail.com>
Date:   Wed Sep 24 13:21:46 2025 +0300

    feat: migrate to tools directive (#13844)
    
    #### Description
    
    This PR migrates the existing `internal/tools` to the new [recommended
    approach for managing tool
    dependencies](https://go.dev/wiki/Modules#how-can-i-track-tool-dependencies-for-a-module).
    
    The makefile targets have been updated, including test/build scripts as
    well.
    
    All tools have been migrated to the to the new `go tool` approach, with
    one exception - `modernize` tool.
    
    The reason why `modernize` has been left out is because of [this
    issue](https://github.com/golang/go/issues/73279).
    
    > The issue here is that the modernize command, currently (but not
    fundamentally) part of the gopls module, is governed by the gopls
    release process, and you can't just upgrade the x/tools package to a
    later one, as happens when installing stringer, because the gopls
    release branch needs a particular version and x/tools does not present a
    stable internal API to gopls. In short, no-one should ever add gopls as
    a module dependency, and that means you cannot use go get -tool with
    gopls. I will update the documentation to make this clear.
    
    Please check this issue for full details:
    
    - https://github.com/golang/go/issues/73279
    
    Based on the comment above it would appear that even in the [current
    internal/tools/go.mod](https://github.com/open-telemetry/opentelemetry-collector/blob/f729e7b55a6b9cf703c74f13d9f48ac8b655ced7/internal/tools/go.mod#L22)
    we have a dependency on `gopls`, which we should not.
    
    cc: @mx-psi
    
    #### Link to tracking issue
    Fixes #13721
    
    #### Testing
    
    Manual testing and running the various Makefile targets, including `all`
    target.
    
    #### Documentation
    
    N/A
