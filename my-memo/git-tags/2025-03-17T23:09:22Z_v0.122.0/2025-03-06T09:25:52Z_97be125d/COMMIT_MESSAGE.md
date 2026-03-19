commit 97be125dcc46f303975fc8fda558db80bbd94d20
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Thu Mar 6 10:25:52 2025 +0100

    [chore] Add release:risky-change on PRs touching certain files (#12552)
    
    #### Description
    
    This modifies the "Add code owners to a PR" CI workflow, which
    automatically adds component-related labels to PRs, to also add the
    "release:risky-change" label if the PR touches a hard-coded list of
    files. Currently, this list is:
    ```
    Makefile
    Makefile.Common
    .github/workflows/prepare-release.yml
    .github/workflows/scripts/release-prepare-release.sh
    ```
    
    I also specified the C locale in the `tr` command which gets the PR
    data. It probably won't matter in the Ubuntu-based CI, but I had [issues
    with the Homebrew core-utils version of
    `tr`](https://github.com/Homebrew/homebrew-core/issues/112266) when
    testing locally. I can remove this change if you think it's unnecessary.
    
    #### Link to tracking issue
    Fixes #11857
    
    #### Testing
    I did some dry runs locally with a few PRs that did or did not touch the
    relevant files.
