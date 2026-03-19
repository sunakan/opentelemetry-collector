commit 5628544bf9c144c458132cc6b22dd0615793ac36
Author: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>
Date:   Thu Aug 21 20:33:02 2025 -0700

    Bump github.com/go-viper/mapstructure/v2 from 2.3.0 to 2.4.0 in /cmd/builder (#13683)
    
    Bumps
    [github.com/go-viper/mapstructure/v2](https://github.com/go-viper/mapstructure)
    from 2.3.0 to 2.4.0.
    <details>
    <summary>Release notes</summary>
    <p><em>Sourced from <a
    href="https://github.com/go-viper/mapstructure/releases">github.com/go-viper/mapstructure/v2's
    releases</a>.</em></p>
    <blockquote>
    <h2>v2.4.0</h2>
    <h2>What's Changed</h2>
    <ul>
    <li>refactor: replace interface{} with any by <a
    href="https://github.com/sagikazarmark"><code>@​sagikazarmark</code></a>
    in <a
    href="https://redirect.github.com/go-viper/mapstructure/pull/115">go-viper/mapstructure#115</a></li>
    <li>build(deps): bump github/codeql-action from 3.29.0 to 3.29.2 by <a
    href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot]
    in <a
    href="https://redirect.github.com/go-viper/mapstructure/pull/114">go-viper/mapstructure#114</a></li>
    <li>Generic tests by <a
    href="https://github.com/sagikazarmark"><code>@​sagikazarmark</code></a>
    in <a
    href="https://redirect.github.com/go-viper/mapstructure/pull/118">go-viper/mapstructure#118</a></li>
    <li>Fix godoc reference link in README.md by <a
    href="https://github.com/peczenyj"><code>@​peczenyj</code></a> in <a
    href="https://redirect.github.com/go-viper/mapstructure/pull/107">go-viper/mapstructure#107</a></li>
    <li>feat: add StringToTimeLocationHookFunc to convert strings to
    *time.Location by <a
    href="https://github.com/ErfanMomeniii"><code>@​ErfanMomeniii</code></a>
    in <a
    href="https://redirect.github.com/go-viper/mapstructure/pull/117">go-viper/mapstructure#117</a></li>
    <li>feat: add back previous StringToSlice as a weak function by <a
    href="https://github.com/sagikazarmark"><code>@​sagikazarmark</code></a>
    in <a
    href="https://redirect.github.com/go-viper/mapstructure/pull/119">go-viper/mapstructure#119</a></li>
    </ul>
    <h2>New Contributors</h2>
    <ul>
    <li><a
    href="https://github.com/ErfanMomeniii"><code>@​ErfanMomeniii</code></a>
    made their first contribution in <a
    href="https://redirect.github.com/go-viper/mapstructure/pull/117">go-viper/mapstructure#117</a></li>
    </ul>
    <p><strong>Full Changelog</strong>: <a
    href="https://github.com/go-viper/mapstructure/compare/v2.3.0...v2.4.0">https://github.com/go-viper/mapstructure/compare/v2.3.0...v2.4.0</a></p>
    </blockquote>
    </details>
    <details>
    <summary>Commits</summary>
    <ul>
    <li><a
    href="https://github.com/go-viper/mapstructure/commit/b9794a5f0e73d425210d6614ed833067029155f5"><code>b9794a5</code></a>
    Merge pull request <a
    href="https://redirect.github.com/go-viper/mapstructure/issues/119">#119</a>
    from go-viper/string-to-weak-slice</li>
    <li><a
    href="https://github.com/go-viper/mapstructure/commit/17cdcb0741054e2a33938adf6bd1f2a5c0aa8f30"><code>17cdcb0</code></a>
    feat: add back previous StringToSlice as a weak function</li>
    <li><a
    href="https://github.com/go-viper/mapstructure/commit/3caca3614c3ab2c5b5d359c44fdcd72058887b19"><code>3caca36</code></a>
    Merge pull request <a
    href="https://redirect.github.com/go-viper/mapstructure/issues/117">#117</a>
    from ErfanMomeniii/main</li>
    <li><a
    href="https://github.com/go-viper/mapstructure/commit/9a861bc115f2b54ed4e494662f29c172d9ef046a"><code>9a861bc</code></a>
    Merge pull request <a
    href="https://redirect.github.com/go-viper/mapstructure/issues/107">#107</a>
    from peczenyj/patch-2</li>
    <li><a
    href="https://github.com/go-viper/mapstructure/commit/86ed5b59da0615fb8c3a413f401cdf0231f1234c"><code>86ed5b5</code></a>
    refactor: update</li>
    <li><a
    href="https://github.com/go-viper/mapstructure/commit/ace5b4e8b3dec99468ffa9498e42fb09d177b0a6"><code>ace5b4e</code></a>
    chore: add interface any linter</li>
    <li><a
    href="https://github.com/go-viper/mapstructure/commit/1a4f1aef38bfa8549762aaf42c7c18a5d268e76e"><code>1a4f1ae</code></a>
    Merge pull request <a
    href="https://redirect.github.com/go-viper/mapstructure/issues/118">#118</a>
    from go-viper/generic-tests</li>
    <li><a
    href="https://github.com/go-viper/mapstructure/commit/a2689090ed4348033c36724d866faf1f911a9f63"><code>a268909</code></a>
    fix: lint</li>
    <li><a
    href="https://github.com/go-viper/mapstructure/commit/17f1fd44eb7606b109c9bb017c0a1c6d3e93b5cd"><code>17f1fd4</code></a>
    test: add more comments</li>
    <li><a
    href="https://github.com/go-viper/mapstructure/commit/b48c8566836bf291bfee2b217d51fc36e8e61f6f"><code>b48c856</code></a>
    test: expand tests</li>
    <li>Additional commits viewable in <a
    href="https://github.com/go-viper/mapstructure/compare/v2.3.0...v2.4.0">compare
    view</a></li>
    </ul>
    </details>
    <br />
    
    
    [![Dependabot compatibility
    score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=github.com/go-viper/mapstructure/v2&package-manager=go_modules&previous-version=2.3.0&new-version=2.4.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)
    
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
