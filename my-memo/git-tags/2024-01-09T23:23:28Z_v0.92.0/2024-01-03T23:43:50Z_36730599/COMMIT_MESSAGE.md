commit 36730599ae4fb2ffc05d8e6e8a42e0bb0880703f
Author: Curtis Robert <crobert@splunk.com>
Date:   Wed Jan 3 15:43:50 2024 -0800

    [chore] Run make gotidy (#9212)
    
    **Description:** <Describe what has changed.>
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    Unfortunately as a part of #9173 I committed some `go.mod` and `go.sum`
    updates incorrectly. I've run `make gotidy` and hopefully cleared those
    up.
    
    These goleak dependencies were added for goleak tests that ended up
    failing, so the tests weren't added as a part of the original PR. This
    ended up leaving the dependencies incorrectly added.
