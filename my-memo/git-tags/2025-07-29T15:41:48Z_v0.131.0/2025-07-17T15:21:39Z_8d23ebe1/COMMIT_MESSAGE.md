commit 8d23ebe1d6c1bc25a8060d9d86472a5cabc01e7c
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Jul 17 17:21:39 2025 +0200

    [chore] Only label issues and ping code owners for PRs that are ready to review (#13410)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    A draft PR is by definition not yet ready for review, and may have
    further changes that add or remove pings (and we never remove labels and
    review requests).
    So this changes the labels assignement and review requests to only
    happen for PRs that are ready to be reviewed.
    
    See
    https://cloud-native.slack.com/archives/C07CCCMRXBK/p1752690459792339
