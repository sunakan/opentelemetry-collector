commit e7e73ab2755d9628089aa0cdaba8e2e68e31d604
Author: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>
Date:   Fri Dec 29 10:07:00 2023 -0800

    Bump github.com/go-git/go-git/v5 from 5.9.0 to 5.11.0 in /internal/tools (#9193)
    
    Bumps [github.com/go-git/go-git/v5](https://github.com/go-git/go-git)
    from 5.9.0 to 5.11.0.
    <details>
    <summary>Release notes</summary>
    <p><em>Sourced from <a
    href="https://github.com/go-git/go-git/releases">github.com/go-git/go-git/v5's
    releases</a>.</em></p>
    <blockquote>
    <h2>v5.11.0</h2>
    <h2>What's Changed</h2>
    <ul>
    <li>git: validate reference names (<a
    href="https://redirect.github.com/go-git/go-git/issues/929">#929</a>) by
    <a
    href="https://github.com/aymanbagabas"><code>@​aymanbagabas</code></a>
    in <a
    href="https://redirect.github.com/go-git/go-git/pull/950">go-git/go-git#950</a></li>
    <li>git: stop iterating at oldest shallow when pulling. Fixes <a
    href="https://redirect.github.com/go-git/go-git/issues/305">#305</a> by
    <a href="https://github.com/dhoizner"><code>@​dhoizner</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/939">go-git/go-git#939</a></li>
    <li>plumbing: object, enable renames in getFileStatsFromFilePatches by
    <a href="https://github.com/djmoch"><code>@​djmoch</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/941">go-git/go-git#941</a></li>
    <li>storage: filesystem, Add option to set a specific FS for alternates
    by <a href="https://github.com/pjbgf"><code>@​pjbgf</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/953">go-git/go-git#953</a></li>
    <li>Align worktree validation with upstream and remove build warnings by
    <a href="https://github.com/pjbgf"><code>@​pjbgf</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/958">go-git/go-git#958</a></li>
    </ul>
    <h2>New Contributors</h2>
    <ul>
    <li><a href="https://github.com/dhoizner"><code>@​dhoizner</code></a>
    made their first contribution in <a
    href="https://redirect.github.com/go-git/go-git/pull/939">go-git/go-git#939</a></li>
    <li><a href="https://github.com/djmoch"><code>@​djmoch</code></a> made
    their first contribution in <a
    href="https://redirect.github.com/go-git/go-git/pull/941">go-git/go-git#941</a></li>
    </ul>
    <p><strong>Full Changelog</strong>: <a
    href="https://github.com/go-git/go-git/compare/v5.10.1...v5.11.0">https://github.com/go-git/go-git/compare/v5.10.1...v5.11.0</a></p>
    <h2>v5.10.1</h2>
    <h2>What's Changed</h2>
    <ul>
    <li>Worktree, ignore ModeSocket files by <a
    href="https://github.com/steiler"><code>@​steiler</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/930">go-git/go-git#930</a></li>
    <li>git: add tracer package by <a
    href="https://github.com/aymanbagabas"><code>@​aymanbagabas</code></a>
    in <a
    href="https://redirect.github.com/go-git/go-git/pull/916">go-git/go-git#916</a></li>
    <li>remote: Flip clause for fast-forward only check by <a
    href="https://github.com/adityasaky"><code>@​adityasaky</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/875">go-git/go-git#875</a></li>
    <li>plumbing: transport/ssh, Fix nil pointer dereference caused when an
    unreachable proxy server is set. Fixes <a
    href="https://redirect.github.com/go-git/go-git/issues/900">#900</a> by
    <a href="https://github.com/anandf"><code>@​anandf</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/901">go-git/go-git#901</a></li>
    <li>plumbing: uppload-server-info, implement upload-server-info by <a
    href="https://github.com/aymanbagabas"><code>@​aymanbagabas</code></a>
    in <a
    href="https://redirect.github.com/go-git/go-git/pull/896">go-git/go-git#896</a></li>
    <li>plumbing: optimise memory consumption for filesystem storage by <a
    href="https://github.com/pjbgf"><code>@​pjbgf</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/799">go-git/go-git#799</a></li>
    <li>plumbing: format/packfile, Refactor patch delta by <a
    href="https://github.com/pjbgf"><code>@​pjbgf</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/908">go-git/go-git#908</a></li>
    <li>plumbing: fix empty uploadpack request error by <a
    href="https://github.com/aymanbagabas"><code>@​aymanbagabas</code></a>
    in <a
    href="https://redirect.github.com/go-git/go-git/pull/932">go-git/go-git#932</a></li>
    <li>plumbing: transport/git, Improve tests error message by <a
    href="https://github.com/pjbgf"><code>@​pjbgf</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/752">go-git/go-git#752</a></li>
    <li>plumbing: format/pktline, Respect pktline error-line errors by <a
    href="https://github.com/aymanbagabas"><code>@​aymanbagabas</code></a>
    in <a
    href="https://redirect.github.com/go-git/go-git/pull/936">go-git/go-git#936</a></li>
    <li>utils: remove ioutil.Pipe and use std library io.Pipe by <a
    href="https://github.com/aymanbagabas"><code>@​aymanbagabas</code></a>
    in <a
    href="https://redirect.github.com/go-git/go-git/pull/922">go-git/go-git#922</a></li>
    <li>utils: move trace to utils by <a
    href="https://github.com/aymanbagabas"><code>@​aymanbagabas</code></a>
    in <a
    href="https://redirect.github.com/go-git/go-git/pull/931">go-git/go-git#931</a></li>
    <li>cli: separate go module for cli by <a
    href="https://github.com/aymanbagabas"><code>@​aymanbagabas</code></a>
    in <a
    href="https://redirect.github.com/go-git/go-git/pull/914">go-git/go-git#914</a></li>
    <li>build: bump github.com/google/go-cmp from 0.5.9 to 0.6.0 by <a
    href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/887">go-git/go-git#887</a></li>
    <li>build: bump actions/setup-go from 3 to 4 by <a
    href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/891">go-git/go-git#891</a></li>
    <li>build: bump github.com/skeema/knownhosts from 1.2.0 to 1.2.1 by <a
    href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/888">go-git/go-git#888</a></li>
    <li>build: bump actions/checkout from 3 to 4 by <a
    href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/890">go-git/go-git#890</a></li>
    <li>build: bump golang.org/x/sys from 0.13.0 to 0.14.0 by <a
    href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/907">go-git/go-git#907</a></li>
    <li>build: bump golang.org/x/text from 0.13.0 to 0.14.0 by <a
    href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/906">go-git/go-git#906</a></li>
    <li>build: bump golang.org/x/crypto from 0.14.0 to 0.15.0 by <a
    href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/917">go-git/go-git#917</a></li>
    <li>build: bump golang.org/x/net from 0.17.0 to 0.18.0 by <a
    href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/918">go-git/go-git#918</a></li>
    </ul>
    <h2>New Contributors</h2>
    <ul>
    <li><a href="https://github.com/anandf"><code>@​anandf</code></a> made
    their first contribution in <a
    href="https://redirect.github.com/go-git/go-git/pull/901">go-git/go-git#901</a></li>
    <li><a href="https://github.com/steiler"><code>@​steiler</code></a> made
    their first contribution in <a
    href="https://redirect.github.com/go-git/go-git/pull/930">go-git/go-git#930</a></li>
    </ul>
    <p><strong>Full Changelog</strong>: <a
    href="https://github.com/go-git/go-git/compare/v5.10.0...v5.10.1">https://github.com/go-git/go-git/compare/v5.10.0...v5.10.1</a></p>
    <h2>v5.10.0</h2>
    <h2>What's Changed</h2>
    <ul>
    <li>PlainInitOptions.Bare and allow using InitOptions with
    PlainInitWithOptions by <a
    href="https://github.com/ThinkChaos"><code>@​ThinkChaos</code></a> in <a
    href="https://redirect.github.com/go-git/go-git/pull/782">go-git/go-git#782</a></li>
    </ul>
    <!-- raw HTML omitted -->
    </blockquote>
    <p>... (truncated)</p>
    </details>
    <details>
    <summary>Commits</summary>
    <ul>
    <li><a
    href="https://github.com/go-git/go-git/commit/5d08d3bd94c65a3b6c25c6fba6907d12b0dac4ca"><code>5d08d3b</code></a>
    Merge pull request <a
    href="https://redirect.github.com/go-git/go-git/issues/958">#958</a>
    from pjbgf/workval</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/5bd1d8f4abcfbf1345a1e5a5ec9a96121f3746dc"><code>5bd1d8f</code></a>
    build: Ensure checkout is the first operation</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/b2c19824771bbcbb21abb51abb319c1a610aa6b3"><code>b2c1982</code></a>
    git: worktree, Align validation with upstream rules</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/cec7da63ca0412fce55a0bf0715b7ba44a41eaa2"><code>cec7da6</code></a>
    Merge pull request <a
    href="https://redirect.github.com/go-git/go-git/issues/953">#953</a>
    from pjbgf/alternates</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/8b47ceb1aa854f3c3bfa1c347157a04324fcd51e"><code>8b47ceb</code></a>
    storage: filesystem, Add option to set a specific FS for alternates</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/4f614891047bae5d0f7a253f014175505b9821d7"><code>4f61489</code></a>
    Merge pull request <a
    href="https://redirect.github.com/go-git/go-git/issues/941">#941</a>
    from djmoch/filestats-rename</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/ae552ce0bf32cddb689727c4c9fa6bf4d3bd6499"><code>ae552ce</code></a>
    Merge pull request <a
    href="https://redirect.github.com/go-git/go-git/issues/939">#939</a>
    from dhoizner/fix-pull-after-shallow</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/cc1895b905ebadb09504d88444ff05932fa6e928"><code>cc1895b</code></a>
    Merge pull request <a
    href="https://redirect.github.com/go-git/go-git/issues/950">#950</a>
    from aymanbagabas/validate-ref</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/de1d5a5978b9599ca3dacd58bbf699e4bb4cf6bd"><code>de1d5a5</code></a>
    git: validate reference names</li>
    <li><a
    href="https://github.com/go-git/go-git/commit/d87110b492c94d99ebdaea732b23a54b7efba94b"><code>d87110b</code></a>
    Merge pull request <a
    href="https://redirect.github.com/go-git/go-git/issues/948">#948</a>
    from go-git/dependabot/go_modules/cli/go-git/github.c...</li>
    <li>Additional commits viewable in <a
    href="https://github.com/go-git/go-git/compare/v5.9.0...v5.11.0">compare
    view</a></li>
    </ul>
    </details>
    <br />
    
    
    [![Dependabot compatibility
    score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=github.com/go-git/go-git/v5&package-manager=go_modules&previous-version=5.9.0&new-version=5.11.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)
    
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
    - `@dependabot merge` will merge this PR after your CI passes on it
    - `@dependabot squash and merge` will squash and merge this PR after
    your CI passes on it
    - `@dependabot cancel merge` will cancel a previously requested merge
    and block automerging
    - `@dependabot reopen` will reopen this PR if it is closed
    - `@dependabot close` will close this PR and stop Dependabot recreating
    it. You can achieve the same result by closing it manually
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
