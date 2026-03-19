commit 230d7f8b83afb387495f60fd25870ad19ad19956
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Thu Dec 5 12:00:24 2024 +0100

    Fix merge queue CI (#11797)
    
    #### Description
    
    This PR removes the `merge_group` trigger from the two CI checks that
    failed in merge queues (but not in PRs). See tracking issue for details.
    
    The reasoning for simply disabling them instead of modifying them to
    work in merge queues is three-fold:
    - For `changelog` to be meaningful, it needs to only run for PRs with no
    `[chore]` title tag or `Skip changelog` label, but it seems there is no
    simple way to access this data in merge queue workflows unfortunately.
    (A possible complicated way may be to parse the ref (PR branch) name and
    query the title and labels in a script with the `gh` command.)
    - `api-compatibility` is never meaningful because it seems to have been
    broken for a long time (see #7443)
    - Both `changelog` and `api-compatibility` are checks on the _set of
    changes_ made by a PR, not on the resulting state of the codebase. As
    such, their result should not meaningfully change when merged against an
    old main vs. a newer main, making running them in the merge queue
    pointless.
    
    #### Link to tracking issue
    Fixes #11790
    
    This should let us try [enabling the merge
    queue](https://github.com/open-telemetry/community/issues/2469) again.
    
    #### Testing
    Testing merge queue checks is unfortunately quite difficult, but since
    we're only disabling checks I don't foresee any issues.
