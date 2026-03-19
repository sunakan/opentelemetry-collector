commit 7de961eb2795537fdf1115fcbf22e7a85cf3bfe0
Author: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>
Date:   Tue Feb 10 17:16:02 2026 +0100

    Bump github.com/go-git/go-git/v5 from 5.16.4 to 5.16.5 in /internal/tools (#14551)
    
    Bumps [github.com/go-git/go-git/v5](https://github.com/go-git/go-git)
    from 5.16.4 to 5.16.5.
    <details>
    <summary>Release notes</summary>
    <p><em>Sourced from <a
    href="https://github.com/go-git/go-git/releases">github.com/go-git/go-git/v5's
    releases</a>.</em></p>
    <blockquote>
    <h2>v5.16.5</h2>
    <h2>What's Changed</h2>
    <ul>
    <li>build: Update module golang.org/x/crypto to v0.45.0 [SECURITY]
    (releases/v5.x) by <a
    href="https://github.com/go-git-renovate"><code>@​go-git-renovate</code></a>[bot]
    in <a
    href="https://redirect.github.com/go-git/go-git/pull/1744">go-git/go-git#1744</a></li>
    <li>build: Bump Go test versions to 1.23-1.25 (v5) by <a
    href="https://github.com/pjbgf"><code>@​pjbgf</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/1746">go-git/go-git#1746</a></li>
    <li>[v5] git: worktree, Don't delete local untracked files when
    resetting worktree by <a
    href="https://github.com/Ch00k"><code>@​Ch00k</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/1800">go-git/go-git#1800</a></li>
    <li>Expand packfile checks by <a
    href="https://github.com/pjbgf"><code>@​pjbgf</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/1836">go-git/go-git#1836</a></li>
    </ul>
    <p><strong>Full Changelog</strong>: <a
    href="https://github.com/go-git/go-git/compare/v5.16.4...v5.16.5">https://github.com/go-git/go-git/compare/v5.16.4...v5.16.5</a></p>
    </blockquote>
    </details>
    <details>
    <summary>Commits</summary>
    <ul>
    <li><a
    href="https://github.com/go-git/go-git/commit/48a1ae05eec4fff4dd0343744a00bf8d6a7a0b4b"><code>48a1ae0</code></a>
    Merge pull request <a
    href="https://redirect.github.com/go-git/go-git/issues/1836">#1836</a>
    from go-git/check-v5</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/42bdf1f9044e2145acaed6ac4dbf1b8d257da5bd"><code>42bdf1f</code></a>
    storage: filesystem, Verify idx matches pack file</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/4146a5653f186f90057afecb7e0addd9e623cf19"><code>4146a56</code></a>
    plumbing: format/idxfile, Verify idxfile's checksum</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/63d78ec080cb176f8cd7bf46ce14f4ba01c1d2e5"><code>63d78ec</code></a>
    plumbing: format/packfile, Add new ErrMalformedPackFile</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/25f1624754395a0c67839e71b34956c853f2eb3d"><code>25f1624</code></a>
    Merge pull request <a
    href="https://redirect.github.com/go-git/go-git/issues/1800">#1800</a>
    from Ch00k/no-delete-untracked-v5</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/600fb139079e3c6886fcfeb20021c707e99e29b4"><code>600fb13</code></a>
    git: worktree, Don't delete local untracked files when resetting
    worktree</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/390a56941510fdc19276aa298228d61889aad97a"><code>390a569</code></a>
    Merge pull request <a
    href="https://redirect.github.com/go-git/go-git/issues/1746">#1746</a>
    from pjbgf/bump-go</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/61c8b859ce3366257354695e99d78fc3739b60fb"><code>61c8b85</code></a>
    build: Bump Go test versions to 1.23-1.25 (v5)</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/e5a05ecd4fb91dc5323ec77667346ae94d84c043"><code>e5a05ec</code></a>
    Merge pull request <a
    href="https://redirect.github.com/go-git/go-git/issues/1744">#1744</a>
    from go-git/renovate/releases/v5.x-go-golang.org-x-c...</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/1495930b098b5e72394ae8ccc2d9396b8aa7e013"><code>1495930</code></a>
    plumbing: Remove use of non-constant format strings</li>
    <li>Additional commits viewable in <a
    href="https://github.com/go-git/go-git/compare/v5.16.4...v5.16.5">compare
    view</a></li>
    </ul>
    </details>
    <br />
    
    
    [![Dependabot compatibility
    score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=github.com/go-git/go-git/v5&package-manager=go_modules&previous-version=5.16.4&new-version=5.16.5)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)
    
    Dependabot will resolve any conflicts with this PR as long as you don't
    alter it yourself. You can also trigger a rebase manually by commenting
    `@dependabot rebase`.
    
    [//]: # (dependabot-automerge-start)
    [//]: # (dependabot-automerge-end)
    
    ---
    
    <details>
    <summary>Dependabot commands and options</summary>
    <br />
    
    You can trigger Dependabot actions by commenting on this PR:
    - `@dependabot rebase` will rebase this PR
    - `@dependabot recreate` will recreate this PR, overwriting any edits
    that have been made to it
    - `@dependabot show <dependency name> ignore conditions` will show all
    of the ignore conditions of the specified dependency
    - `@dependabot ignore this major version` will close this PR and stop
    Dependabot creating any more for this major version (unless you reopen
    the PR or upgrade to it yourself)
    - `@dependabot ignore this minor version` will close this PR and stop
    Dependabot creating any more for this minor version (unless you reopen
    the PR or upgrade to it yourself)
    - `@dependabot ignore this dependency` will close this PR and stop
    Dependabot creating any more for this dependency (unless you reopen the
    PR or upgrade to it yourself)
    You can disable automated security fix PRs for this repo from the
    [Security Alerts
    page](https://github.com/open-telemetry/opentelemetry-collector/network/alerts).
    
    </details>
    
    Signed-off-by: dependabot[bot] <support@github.com>
    Co-authored-by: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>
