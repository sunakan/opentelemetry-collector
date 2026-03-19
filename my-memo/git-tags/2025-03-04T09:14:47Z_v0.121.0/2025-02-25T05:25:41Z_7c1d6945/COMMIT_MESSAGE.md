commit 7c1d6945c1494944beedb50aba938cdd83eae8e4
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Feb 25 05:25:41 2025 +0000

    Update github-actions deps (#12469)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    |
    [actions/upload-artifact](https://redirect.github.com/actions/upload-artifact)
    | action | patch | `v4.6.0` -> `v4.6.1` |
    |
    [github/codeql-action](https://redirect.github.com/github/codeql-action)
    | action | patch | `v3.28.9` -> `v3.28.10` |
    |
    [ossf/scorecard-action](https://redirect.github.com/ossf/scorecard-action)
    | action | patch | `v2.4.0` -> `v2.4.1` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>actions/upload-artifact (actions/upload-artifact)</summary>
    
    ###
    [`v4.6.1`](https://redirect.github.com/actions/upload-artifact/releases/tag/v4.6.1)
    
    [Compare
    Source](https://redirect.github.com/actions/upload-artifact/compare/v4.6.0...v4.6.1)
    
    #### What's Changed
    
    - Update to use artifact 2.2.2 package by
    [@&#8203;yacaovsnc](https://redirect.github.com/yacaovsnc) in
    [https://github.com/actions/upload-artifact/pull/673](https://redirect.github.com/actions/upload-artifact/pull/673)
    
    **Full Changelog**:
    https://github.com/actions/upload-artifact/compare/v4...v4.6.1
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v3.28.10`](https://redirect.github.com/github/codeql-action/releases/tag/v3.28.10)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.28.9...v3.28.10)
    
    ##### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    ##### 3.28.10 - 21 Feb 2025
    
    - Update default CodeQL bundle version to 2.20.5.
    [#&#8203;2772](https://redirect.github.com/github/codeql-action/pull/2772)
    - Address an issue where the CodeQL Bundle would occasionally fail to
    decompress on macOS.
    [#&#8203;2768](https://redirect.github.com/github/codeql-action/pull/2768)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.28.10/CHANGELOG.md)
    for more information.
    
    </details>
    
    <details>
    <summary>ossf/scorecard-action (ossf/scorecard-action)</summary>
    
    ###
    [`v2.4.1`](https://redirect.github.com/ossf/scorecard-action/releases/tag/v2.4.1)
    
    [Compare
    Source](https://redirect.github.com/ossf/scorecard-action/compare/v2.4.0...v2.4.1)
    
    #### What's Changed
    
    - This update bumps the Scorecard version to the v5.1.1 release. For a
    complete list of changes, please refer to the
    [v5.1.0](https://redirect.github.com/ossf/scorecard/releases/tag/v5.1.0)
    and
    [v5.1.1](https://redirect.github.com/ossf/scorecard/releases/tag/v5.1.1)
    release notes.
    - Publishing results now uses half the API quota as before. The exact
    savings depends on the repository in question.
    - use Scorecard library entrypoint instead of Cobra hooking by
    [@&#8203;spencerschrock](https://redirect.github.com/spencerschrock) in
    [https://github.com/ossf/scorecard-action/pull/1423](https://redirect.github.com/ossf/scorecard-action/pull/1423)
    -   Some errors were made into annotations to make them more visible
    - Make default branch error more prominent by
    [@&#8203;jsoref](https://redirect.github.com/jsoref) in
    [https://github.com/ossf/scorecard-action/pull/1459](https://redirect.github.com/ossf/scorecard-action/pull/1459)
    - There is now an optional `file_mode` input which controls how
    repository files are fetched from GitHub. The default is `archive`, but
    `git` produces the most accurate results for repositories with
    `.gitattributes` files at the cost of analysis speed.
    - add input for specifying `--file-mode` by
    [@&#8203;spencerschrock](https://redirect.github.com/spencerschrock) in
    [https://github.com/ossf/scorecard-action/pull/1509](https://redirect.github.com/ossf/scorecard-action/pull/1509)
    - The underlying container for the action is now [hosted on GitHub
    Container
    Registry](https://redirect.github.com/ossf/scorecard-action/pkgs/container/scorecard-action).
    There should be no functional changes.
    - :seedling: publish docker images to GitHub Container Registry by
    [@&#8203;spencerschrock](https://redirect.github.com/spencerschrock) in
    [https://github.com/ossf/scorecard-action/pull/1453](https://redirect.github.com/ossf/scorecard-action/pull/1453)
    
    ##### Docs
    
    - Installation docs update by
    [@&#8203;JeremiahAHoward](https://redirect.github.com/JeremiahAHoward)
    in
    [https://github.com/ossf/scorecard-action/pull/1416](https://redirect.github.com/ossf/scorecard-action/pull/1416)
    
    #### New Contributors
    
    - [@&#8203;JeremiahAHoward](https://redirect.github.com/JeremiahAHoward)
    made their first contribution in
    [https://github.com/ossf/scorecard-action/pull/1416](https://redirect.github.com/ossf/scorecard-action/pull/1416)
    - [@&#8203;jsoref](https://redirect.github.com/jsoref) made their first
    contribution in
    [https://github.com/ossf/scorecard-action/pull/1459](https://redirect.github.com/ossf/scorecard-action/pull/1459)
    **Full Changelog**:
    https://github.com/ossf/scorecard-action/compare/v2.4.0...v2.4.1
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    👻 **Immortal**: This PR will be recreated if closed unmerged. Get
    [config
    help](https://redirect.github.com/renovatebot/renovate/discussions) if
    that's undesired.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS4xNzYuMiIsInVwZGF0ZWRJblZlciI6IjM5LjE3Ni4yIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
