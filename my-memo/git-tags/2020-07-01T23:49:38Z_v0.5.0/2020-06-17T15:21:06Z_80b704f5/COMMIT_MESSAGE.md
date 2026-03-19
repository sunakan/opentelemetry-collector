commit 80b704f552a8e9cb9477c80558bdd98c42c5f516
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Jun 17 11:21:06 2020 -0400

    Increase resource limits for some perf tests (#1134)
    
    A few perf tests are recently failing once in a while on CircleCI.
    I checked the commit history and was unable to identify a commit
    that may have caused a regression. The failures are happening
    randomly and the only conclusion I can make is that CircleCI is
    a bit slower than usual and these tests have limits that are too
    tight.
    
    I am increasing the limits to avoid the intermittent CI failures.
