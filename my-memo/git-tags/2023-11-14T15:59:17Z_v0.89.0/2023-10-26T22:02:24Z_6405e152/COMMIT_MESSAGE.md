commit 6405e152a2d9a08de1fe1b70fd4ac775a12a3cda
Author: Alex Boten <aboten@lightstep.com>
Date:   Thu Oct 26 15:02:24 2023 -0700

    [builder] remove the need for adding a replace statement (#8763)
    
    The builder inserted a replace statement for the cloud.google.com/go to
    address an ambiguous import issue. This has the negative side effect of
    breaking go install for any modules that use the builder to generate a
    go.mod. This change removes that replace statement. Instead, the builder
    explicitly runs `go get cloud.google.com/go` as part of the generation
    process.
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
