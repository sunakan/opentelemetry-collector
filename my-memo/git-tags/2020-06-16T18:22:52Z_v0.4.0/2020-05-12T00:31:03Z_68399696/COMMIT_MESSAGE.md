commit 68399696e922122186c6cad69cd45eb008722f6a
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon May 11 20:31:03 2020 -0400

    Increase limits for TestTrace10kSPS/OpenCensus (#950)
    
    The limits are set too low and sporadically fail when CI runs a bit slower
    than usual. We normally set limits to 1.3x of observed maximum.
