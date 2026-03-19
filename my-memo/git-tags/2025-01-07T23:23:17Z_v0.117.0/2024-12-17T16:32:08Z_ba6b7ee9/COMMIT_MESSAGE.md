commit ba6b7ee9291d807fcfb27808f50cc6f376aa5018
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Tue Dec 17 17:32:08 2024 +0100

    [chore] Merge freeze check uses title to find Release PRs (#11936)
    
    #### Description
    
    The last attempt at making the Merge freeze check work in release PRs
    failed (#11906). This PR tries a different approach: it changes the
    criteria of the Merge freeze check, so that a freeze is enacted iff
    there is an open PR authored by @opentelemetrybot whose title contains
    "[chore] Prepare release" (note that if it weren't for the author, this
    PR would qualify).
    
    This PR additionally reverts #11849, so no label is added to the release
    PR. I also added the `pull_request.enqueued` trigger, taking inspiration
    [from Merge
    Freeze](https://docs.mergefreeze.com/github-merge-queue#how-it-works),
    to see if it could help reject PRs earlier.
    
    I tried to make sure the freeze check would be properly skipped for the
    release PR itself, both in PR checks and in the merge queue, but given
    the state of Github's documentation, I'm not very confident about this.
    
    Notably, these is an edge case where I'm not sure what would happen:
    what if another PR gets added to the merge queue at the same time as the
    release PR? How many times would the "merge_group" check run, and with
    what values for "github.event.merge_group.head_commit"? Would both PR be
    booted out of the queue (not great)? Would both be accepted (way worse)?
    Does it depend on the order?
    
    #### Link to tracking issue
    Fixes #11906 and fixed #11808
    
    #### Testing
    As always with this, it's pretty much impossible to test before merging.
    Once merged, I strongly recommend we do the following test to make sure
    that this issue does not block the real release process again:
    - Create two dummy PRs that change nothing of consequence: the freeze
    check should pass
    - Run the "Prepare release" action
    - Rerun the freeze check on one of the dummy PRs: it should now fail
    - Approve the second PR and try to merge it: it should be booted out of
    the merge queue
    - Close all test PRs
    
    This unfortunately does not test whether the release PR gets merged
    properly, but I don't see how to test until the next release process,
    unfortunately.
