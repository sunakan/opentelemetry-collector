commit 3ad5e03271687156521832216a552b179699aff0
Author: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>
Date:   Wed Feb 25 21:42:25 2026 +0000

    Bump github.com/cloudflare/circl from 1.6.2 to 1.6.3 in /internal/tools (#14644)
    
    Bumps [github.com/cloudflare/circl](https://github.com/cloudflare/circl)
    from 1.6.2 to 1.6.3.
    <details>
    <summary>Release notes</summary>
    <p><em>Sourced from <a
    href="https://github.com/cloudflare/circl/releases">github.com/cloudflare/circl's
    releases</a>.</em></p>
    <blockquote>
    <h2>CIRCL v1.6.3</h2>
    <p>Fix a bug on ecc/p384 scalar multiplication.</p>
    <h3>What's Changed</h3>
    <ul>
    <li>sign/mldsa: Check opts for nil value by <a
    href="https://github.com/armfazh"><code>@​armfazh</code></a> in <a
    href="https://redirect.github.com/cloudflare/circl/pull/582">cloudflare/circl#582</a></li>
    <li>ecc/p384: Point addition must handle point doubling case. by <a
    href="https://github.com/armfazh"><code>@​armfazh</code></a> in <a
    href="https://redirect.github.com/cloudflare/circl/pull/583">cloudflare/circl#583</a></li>
    <li>Release CIRCL v1.6.3 by <a
    href="https://github.com/armfazh"><code>@​armfazh</code></a> in <a
    href="https://redirect.github.com/cloudflare/circl/pull/584">cloudflare/circl#584</a></li>
    </ul>
    <p><strong>Full Changelog</strong>: <a
    href="https://github.com/cloudflare/circl/compare/v1.6.2...v1.6.3">https://github.com/cloudflare/circl/compare/v1.6.2...v1.6.3</a></p>
    </blockquote>
    </details>
    <details>
    <summary>Commits</summary>
    <ul>
    <li><a
    href="https://github.com/cloudflare/circl/commit/24ae53c5d6f7fe18203adc125ba3ed76a38703e1"><code>24ae53c</code></a>
    Release CIRCL v1.6.3</li>
    <li><a
    href="https://github.com/cloudflare/circl/commit/581020bd4a836b8ce7bd4e414ba2884c07dbc906"><code>581020b</code></a>
    Rename method to oddMultiplesProjective.</li>
    <li><a
    href="https://github.com/cloudflare/circl/commit/12209a4566605692a8402594e367a5aed5148460"><code>12209a4</code></a>
    Removing unused cmov for jacobian points.</li>
    <li><a
    href="https://github.com/cloudflare/circl/commit/fcba359f4178645d2c9e50f29ab6966337da4b95"><code>fcba359</code></a>
    ecc/p384: use of complete projective formulas for scalar
    multiplication.</li>
    <li><a
    href="https://github.com/cloudflare/circl/commit/5e1bae8d8c2df4e717c2c5c2d5b5d60b629b2ac6"><code>5e1bae8</code></a>
    ecc/p384: handle point doubling in point addition with Jacobian
    coordinates.</li>
    <li><a
    href="https://github.com/cloudflare/circl/commit/341604685ff97e8f7440ae4b4711ba1c118c648c"><code>3416046</code></a>
    Check opts for nil value.</li>
    <li>See full diff in <a
    href="https://github.com/cloudflare/circl/compare/v1.6.2...v1.6.3">compare
    view</a></li>
    </ul>
    </details>
    <br />
    
    
    [![Dependabot compatibility
    score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=github.com/cloudflare/circl&package-manager=go_modules&previous-version=1.6.2&new-version=1.6.3)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)
    
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
