commit 1e740d07b1e3ce04d6a0e93beafa83be4342a419
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Sat Apr 24 03:16:13 2021 +0530

    Add -trimpath to go build args. (#3006)
    
    This strips off absolute paths referring to GOPATH, modules and the
    project from the build taking us a step closer to reproducible builds.
