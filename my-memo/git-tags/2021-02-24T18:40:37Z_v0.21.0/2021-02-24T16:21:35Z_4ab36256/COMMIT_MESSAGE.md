commit 4ab3625643462549b8d2918c2fb33337ed754475
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Feb 24 11:21:35 2021 -0500

    Increase memory limit for TestTraceNoBackend10kSPS (#2538)
    
    The test is very close to the limit (e.g. 149MB) or exceeds it and fails.
    Bumping the limits to make sure it succeeds.
