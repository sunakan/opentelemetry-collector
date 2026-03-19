commit 7fceca200d6bc58c9e09bb0985e2cf6bb764c87c
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Sep 1 17:44:23 2020 -0400

    Bump OpenCensus trace load test memory limit to avoid spurious failures (#1712)
    
    Historically 70MB was very close to observed max. We typically used +15%
    to observed max, so I bumped it to 82MB.
