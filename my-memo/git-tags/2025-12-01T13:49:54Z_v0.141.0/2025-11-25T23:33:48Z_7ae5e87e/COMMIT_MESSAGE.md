commit 7ae5e87eb26c6d137b71aa3d41d88c2a8c54925d
Author: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>
Date:   Tue Nov 25 15:33:48 2025 -0800

    Bump golang.org/x/crypto from 0.43.0 to 0.45.0 in /internal/tools (#14204)
    
    Bumps [golang.org/x/crypto](https://github.com/golang/crypto) from
    0.43.0 to 0.45.0.
    <details>
    <summary>Commits</summary>
    <ul>
    <li><a
    href="https://github.com/golang/crypto/commit/4e0068c0098be10d7025c99ab7c50ce454c1f0f9"><code>4e0068c</code></a>
    go.mod: update golang.org/x dependencies</li>
    <li><a
    href="https://github.com/golang/crypto/commit/e79546e28b85ea53dd37afe1c4102746ef553b9c"><code>e79546e</code></a>
    ssh: curb GSSAPI DoS risk by limiting number of specified OIDs</li>
    <li><a
    href="https://github.com/golang/crypto/commit/f91f7a7c31bf90b39c1de895ad116a2bacc88748"><code>f91f7a7</code></a>
    ssh/agent: prevent panic on malformed constraint</li>
    <li><a
    href="https://github.com/golang/crypto/commit/2df4153a0311bdfea44376e0eb6ef2faefb0275b"><code>2df4153</code></a>
    acme/autocert: let automatic renewal work with short lifetime certs</li>
    <li><a
    href="https://github.com/golang/crypto/commit/bcf6a849efcf4702fa5172cb0998b46c3da1e989"><code>bcf6a84</code></a>
    acme: pass context to request</li>
    <li><a
    href="https://github.com/golang/crypto/commit/b4f2b62076abeee4e43fb59544dac565715fbf1e"><code>b4f2b62</code></a>
    ssh: fix error message on unsupported cipher</li>
    <li><a
    href="https://github.com/golang/crypto/commit/79ec3a51fcc7fbd2691d56155d578225ccc542e2"><code>79ec3a5</code></a>
    ssh: allow to bind to a hostname in remote forwarding</li>
    <li><a
    href="https://github.com/golang/crypto/commit/122a78f140d9d3303ed3261bc374bbbca149140f"><code>122a78f</code></a>
    go.mod: update golang.org/x dependencies</li>
    <li><a
    href="https://github.com/golang/crypto/commit/c0531f9c34514ad5c5551e2d6ce569ca673a8afd"><code>c0531f9</code></a>
    all: eliminate vet diagnostics</li>
    <li><a
    href="https://github.com/golang/crypto/commit/0997000b45e3a40598272081bcad03ffd21b8adb"><code>0997000</code></a>
    all: fix some comments</li>
    <li>Additional commits viewable in <a
    href="https://github.com/golang/crypto/compare/v0.43.0...v0.45.0">compare
    view</a></li>
    </ul>
    </details>
    <br />
    
    
    [![Dependabot compatibility
    score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=golang.org/x/crypto&package-manager=go_modules&previous-version=0.43.0&new-version=0.45.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)
    
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
