commit c1e860e56c578cf841e88a61f98d64716b3e1aa2
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Mon Dec 23 10:29:37 2024 -0500

    [chore][release.md] checkout release branch to the correct commit & update release schedule (#11938)
    
    #### Description
    If more PRs are merged after the release PR commit, make sure to
    checkout the release branch to the release PR commit rather than the
    mainline head.
