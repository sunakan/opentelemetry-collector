commit fd202f56ae2d27d53f4ec683f671ffae96aabddd
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Sep 2 04:18:18 2025 +0000

    Update module github.com/spf13/cobra to v1.10.1 (#13746)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Confidence |
    |---|---|---|---|
    | [github.com/spf13/cobra](https://redirect.github.com/spf13/cobra) |
    `v1.9.1` -> `v1.10.1` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fspf13%2fcobra/v1.10.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fspf13%2fcobra/v1.9.1/v1.10.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>spf13/cobra (github.com/spf13/cobra)</summary>
    
    ###
    [`v1.10.1`](https://redirect.github.com/spf13/cobra/releases/tag/v1.10.1)
    
    [Compare
    Source](https://redirect.github.com/spf13/cobra/compare/v1.10.0...v1.10.1)
    
    ##### 🐛 Fix
    
    - chore: upgrade pflags v1.0.9 by
    [@&#8203;jpmcb](https://redirect.github.com/jpmcb) in
    [#&#8203;2305](https://redirect.github.com/spf13/cobra/pull/2305)
    
    v1.0.9 of pflags brought back `ParseErrorsWhitelist` and marked it as
    deprecated
    
    **Full Changelog**:
    <https://github.com/spf13/cobra/compare/v1.10.0...v1.10.1>
    
    ###
    [`v1.10.0`](https://redirect.github.com/spf13/cobra/releases/tag/v1.10.0)
    
    [Compare
    Source](https://redirect.github.com/spf13/cobra/compare/v1.9.1...v1.10.0)
    
    #### What's Changed
    
    ##### 🚨 Attention!
    
    - Bump pflag to 1.0.8 by
    [@&#8203;tomasaschan](https://redirect.github.com/tomasaschan) in
    [#&#8203;2303](https://redirect.github.com/spf13/cobra/pull/2303)
    
    This version of `pflag` carried a breaking change: it renamed
    `ParseErrorsWhitelist` to `ParseErrorsAllowlist` which can break builds
    if both `pflag` and `cobra` are dependencies in your project.
    
    - If you use both `pflag and `cobra`, upgrade `pflag`to 1.0.8
    and`cobra`to`1.10.0\`
    - ***or*** use the newer, fixed version of `pflag` v1.0.9 which keeps
    the deprecated `ParseErrorsWhitelist`
    
    More details can be found here: [#&#8203;2303
    (comment)](https://redirect.github.com/spf13/cobra/pull/2303#issuecomment-3242333515)
    
    ##### ✨ Features
    
    - Flow context to command in SetHelpFunc by
    [@&#8203;Frassle](https://redirect.github.com/Frassle) in
    [#&#8203;2241](https://redirect.github.com/spf13/cobra/pull/2241)
    - The default ShellCompDirective can be customized for a command and its
    subcommands by [@&#8203;albers](https://redirect.github.com/albers) in
    [#&#8203;2238](https://redirect.github.com/spf13/cobra/pull/2238)
    
    ##### 🐛 Fix
    
    - Upgrade golangci-lint to v2, address findings by
    [@&#8203;scop](https://redirect.github.com/scop) in
    [#&#8203;2279](https://redirect.github.com/spf13/cobra/pull/2279)
    
    ##### 🪠 Testing
    
    - Test with Go 1.24 by
    [@&#8203;harryzcy](https://redirect.github.com/harryzcy) in
    [#&#8203;2236](https://redirect.github.com/spf13/cobra/pull/2236)
    - chore: Rm GitHub Action PR size labeler by
    [@&#8203;jpmcb](https://redirect.github.com/jpmcb) in
    [#&#8203;2256](https://redirect.github.com/spf13/cobra/pull/2256)
    
    ##### 📝 Docs
    
    - Remove traling curlybrace by
    [@&#8203;yedayak](https://redirect.github.com/yedayak) in
    [#&#8203;2237](https://redirect.github.com/spf13/cobra/pull/2237)
    - Update command.go by
    [@&#8203;styee](https://redirect.github.com/styee) in
    [#&#8203;2248](https://redirect.github.com/spf13/cobra/pull/2248)
    - feat: Add security policy by
    [@&#8203;jpmcb](https://redirect.github.com/jpmcb) in
    [#&#8203;2253](https://redirect.github.com/spf13/cobra/pull/2253)
    - Update Readme (Warp) by
    [@&#8203;ericdachen](https://redirect.github.com/ericdachen) in
    [#&#8203;2267](https://redirect.github.com/spf13/cobra/pull/2267)
    - Add Periscope to the list of projects using Cobra by
    [@&#8203;anishathalye](https://redirect.github.com/anishathalye) in
    [#&#8203;2299](https://redirect.github.com/spf13/cobra/pull/2299)
    
    #### New Contributors
    
    - [@&#8203;harryzcy](https://redirect.github.com/harryzcy) made their
    first contribution in
    [#&#8203;2236](https://redirect.github.com/spf13/cobra/pull/2236)
    - [@&#8203;yedayak](https://redirect.github.com/yedayak) made their
    first contribution in
    [#&#8203;2237](https://redirect.github.com/spf13/cobra/pull/2237)
    - [@&#8203;Frassle](https://redirect.github.com/Frassle) made their
    first contribution in
    [#&#8203;2241](https://redirect.github.com/spf13/cobra/pull/2241)
    - [@&#8203;styee](https://redirect.github.com/styee) made their first
    contribution in
    [#&#8203;2248](https://redirect.github.com/spf13/cobra/pull/2248)
    - [@&#8203;ericdachen](https://redirect.github.com/ericdachen) made
    their first contribution in
    [#&#8203;2267](https://redirect.github.com/spf13/cobra/pull/2267)
    - [@&#8203;albers](https://redirect.github.com/albers) made their first
    contribution in
    [#&#8203;2238](https://redirect.github.com/spf13/cobra/pull/2238)
    - [@&#8203;anishathalye](https://redirect.github.com/anishathalye) made
    their first contribution in
    [#&#8203;2299](https://redirect.github.com/spf13/cobra/pull/2299)
    - [@&#8203;tomasaschan](https://redirect.github.com/tomasaschan) made
    their first contribution in
    [#&#8203;2303](https://redirect.github.com/spf13/cobra/pull/2303)
    
    **Full Changelog**:
    <https://github.com/spf13/cobra/compare/v1.9.1...v1.9.2>
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    🔕 **Ignore**: Close this PR and you won't be reminded about this update
    again.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MS45MS4xIiwidXBkYXRlZEluVmVyIjoiNDEuOTEuMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
