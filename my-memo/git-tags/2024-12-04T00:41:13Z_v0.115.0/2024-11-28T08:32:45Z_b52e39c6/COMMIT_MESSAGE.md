commit b52e39c69cfb9a28c725ef0651f8fcf4ea086fd0
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Thu Nov 28 09:32:45 2024 +0100

    [chore] Add CI check to enforce merge freezes (#11744)
    
    #### Description
    
    As stated in the [Release Procedure
    document](https://github.com/open-telemetry/opentelemetry-collector/blob/main/docs/release.md#releasing-opentelemetry-collector),
    all merging in Core should be halted while the "Prepare release" PR is
    open. This PR adds a CI job checking the existence of such a PR,
    allowing us to enforce these freezes automatically.
    
    To make things simple, I decided to distinguish the "Prepare release" PR
    from others by using a new `prepare:merge-freeze` label. I modified the
    "Prepare release" action to include that label on the automatically
    created PR, but in rare cases where maintainers might create the PR
    themselves, the label can be added manually. Triagers will need to be
    careful not to accidentally add this label to any random PR to avoid
    artificial freezes.
    
    Because, in the current state, this CI check is run on each commit of a
    PR, and at no other time, there is a chance for:
    - False positives: If a commit is pushed during a freeze, and the freeze
    is later rescinded, the PR will remain unmergeable until a new commit is
    pushed. A simple solution is to re-run the check manually.
    - False negatives: If a commit is pushed outside of a freeze, then a
    freeze is enacted, the PR will remain mergeable despite the freeze. This
    is more problematic.
    
    To solve this second problem and make this check truly useful, two
    changes in the repository configuration are necessary:
    - the merge queue should be enabled, allowing us to run checks again
    just before merging;
    - this new CI check should be added to the list of required checks for
    the main branch.
    
    This will allow us to automatically cancel the merging of PRs during a
    freeze. A later PR on the community repository should take care of these
    configuration changes.
    
    Note that another solution to handle outdated CI checks would be to use
    a tool like [MergeFreeze](https://www.mergefreeze.com), but reading
    [this
    document](https://github.com/open-telemetry/community/blob/main/docs/using-github-extensions.md),
    it sounds like it would be a harder sell with the community than
    enabling the merge queue.
    
    #### Link to tracking issue
    Updates #11707
    
    #### Testing
    
    Simple tests were made on a separate repository to check that enabling
    the merge queue fixes the false negatives.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
