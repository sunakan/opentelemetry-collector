commit 42a0b79ec6038c0f4f657bd3f923edfcf3f253af
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Sep 9 11:38:25 2025 +0200

    Update module github.com/stretchr/testify to v1.11.1 (#13732)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Confidence |
    |---|---|---|---|
    |
    [github.com/stretchr/testify](https://redirect.github.com/stretchr/testify)
    | `v1.10.0` -> `v1.11.1` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fstretchr%2ftestify/v1.11.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fstretchr%2ftestify/v1.10.0/v1.11.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>stretchr/testify (github.com/stretchr/testify)</summary>
    
    ###
    [`v1.11.1`](https://redirect.github.com/stretchr/testify/releases/tag/v1.11.1)
    
    [Compare
    Source](https://redirect.github.com/stretchr/testify/compare/v1.11.0...v1.11.1)
    
    This release fixes
    [#&#8203;1785](https://redirect.github.com/stretchr/testify/issues/1785)
    introduced in v1.11.0 where expected argument values implementing the
    stringer interface (`String() string`) with a method which mutates their
    value, when passed to mock.Mock.On (`m.On("Method",
    <expected>).Return()`) or actual argument values passed to
    mock.Mock.Called may no longer match one another where they previously
    did match. The behaviour prior to v1.11.0 where the stringer is always
    called is restored. Future testify releases may not call the stringer
    method at all in this case.
    
    #### What's Changed
    
    - Backport
    [#&#8203;1786](https://redirect.github.com/stretchr/testify/issues/1786)
    to release/1.11: mock: revert to pre-v1.11.0 argument matching behavior
    for mutating stringers by
    [@&#8203;brackendawson](https://redirect.github.com/brackendawson) in
    [#&#8203;1788](https://redirect.github.com/stretchr/testify/pull/1788)
    
    **Full Changelog**:
    <https://github.com/stretchr/testify/compare/v1.11.0...v1.11.1>
    
    ###
    [`v1.11.0`](https://redirect.github.com/stretchr/testify/releases/tag/v1.11.0)
    
    [Compare
    Source](https://redirect.github.com/stretchr/testify/compare/v1.10.0...v1.11.0)
    
    #### What's Changed
    
    ##### Functional Changes
    
    v1.11.0 Includes a number of performance improvements.
    
    - Call stack perf change for CallerInfo by
    [@&#8203;mikeauclair](https://redirect.github.com/mikeauclair) in
    [#&#8203;1614](https://redirect.github.com/stretchr/testify/pull/1614)
    - Lazily render mock diff output on successful match by
    [@&#8203;mikeauclair](https://redirect.github.com/mikeauclair) in
    [#&#8203;1615](https://redirect.github.com/stretchr/testify/pull/1615)
    - assert: check early in Eventually, EventuallyWithT, and Never by
    [@&#8203;cszczepaniak](https://redirect.github.com/cszczepaniak) in
    [#&#8203;1427](https://redirect.github.com/stretchr/testify/pull/1427)
    - assert: add IsNotType by
    [@&#8203;bartventer](https://redirect.github.com/bartventer) in
    [#&#8203;1730](https://redirect.github.com/stretchr/testify/pull/1730)
    - assert.JSONEq: shortcut if same strings by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1754](https://redirect.github.com/stretchr/testify/pull/1754)
    - assert.YAMLEq: shortcut if same strings by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1755](https://redirect.github.com/stretchr/testify/pull/1755)
    - assert: faster and simpler isEmpty using reflect.Value.IsZero by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1761](https://redirect.github.com/stretchr/testify/pull/1761)
    - suite: faster methods filtering (internal refactor) by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1758](https://redirect.github.com/stretchr/testify/pull/1758)
    
    ##### Fixes
    
    - assert.ErrorAs: log target type by
    [@&#8203;craig65535](https://redirect.github.com/craig65535) in
    [#&#8203;1345](https://redirect.github.com/stretchr/testify/pull/1345)
    - Fix failure message formatting for Positive and Negative asserts in
    [#&#8203;1062](https://redirect.github.com/stretchr/testify/pull/1062)
    - Improve ErrorIs message when error is nil but an error was expected by
    [@&#8203;tsioftas](https://redirect.github.com/tsioftas) in
    [#&#8203;1681](https://redirect.github.com/stretchr/testify/pull/1681)
    - fix Subset/NotSubset when calling with mixed input types by
    [@&#8203;siliconbrain](https://redirect.github.com/siliconbrain) in
    [#&#8203;1729](https://redirect.github.com/stretchr/testify/pull/1729)
    - Improve ErrorAs failure message when error is nil by
    [@&#8203;ccoVeille](https://redirect.github.com/ccoVeille) in
    [#&#8203;1734](https://redirect.github.com/stretchr/testify/pull/1734)
    - mock.AssertNumberOfCalls: improve error msg by
    [@&#8203;3scalation](https://redirect.github.com/3scalation) in
    [#&#8203;1743](https://redirect.github.com/stretchr/testify/pull/1743)
    
    ##### Documentation, Build & CI
    
    - docs: Fix typo in README by
    [@&#8203;alexandear](https://redirect.github.com/alexandear) in
    [#&#8203;1688](https://redirect.github.com/stretchr/testify/pull/1688)
    - Replace deprecated io/ioutil with io and os by
    [@&#8203;alexandear](https://redirect.github.com/alexandear) in
    [#&#8203;1684](https://redirect.github.com/stretchr/testify/pull/1684)
    - Document consequences of calling t.FailNow() by
    [@&#8203;greg0ire](https://redirect.github.com/greg0ire) in
    [#&#8203;1710](https://redirect.github.com/stretchr/testify/pull/1710)
    - chore: update docs for Unset
    [#&#8203;1621](https://redirect.github.com/stretchr/testify/issues/1621)
    by [@&#8203;techfg](https://redirect.github.com/techfg) in
    [#&#8203;1709](https://redirect.github.com/stretchr/testify/pull/1709)
    - README: apply gofmt to examples by
    [@&#8203;alexandear](https://redirect.github.com/alexandear) in
    [#&#8203;1687](https://redirect.github.com/stretchr/testify/pull/1687)
    - refactor: use %q and %T to simplify fmt.Sprintf by
    [@&#8203;alexandear](https://redirect.github.com/alexandear) in
    [#&#8203;1674](https://redirect.github.com/stretchr/testify/pull/1674)
    - Propose Christophe Colombier (ccoVeille) as approver by
    [@&#8203;brackendawson](https://redirect.github.com/brackendawson) in
    [#&#8203;1716](https://redirect.github.com/stretchr/testify/pull/1716)
    - Update documentation for the Error function in assert or require
    package by [@&#8203;architagr](https://redirect.github.com/architagr) in
    [#&#8203;1675](https://redirect.github.com/stretchr/testify/pull/1675)
    - assert: remove deprecated build constraints by
    [@&#8203;alexandear](https://redirect.github.com/alexandear) in
    [#&#8203;1671](https://redirect.github.com/stretchr/testify/pull/1671)
    - assert: apply gofumpt to internal test suite by
    [@&#8203;ccoVeille](https://redirect.github.com/ccoVeille) in
    [#&#8203;1739](https://redirect.github.com/stretchr/testify/pull/1739)
    - CI: fix shebang in .ci.\*.sh scripts by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1746](https://redirect.github.com/stretchr/testify/pull/1746)
    - assert,require: enable parallel testing on (almost) all top tests by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1747](https://redirect.github.com/stretchr/testify/pull/1747)
    - suite.Passed: add one more status test report by
    [@&#8203;Ararsa-Derese](https://redirect.github.com/Ararsa-Derese) in
    [#&#8203;1706](https://redirect.github.com/stretchr/testify/pull/1706)
    - Add Helper() method in internal mocks and assert.CollectT by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1423](https://redirect.github.com/stretchr/testify/pull/1423)
    - assert.Same/NotSame: improve usage of Sprintf by
    [@&#8203;ccoVeille](https://redirect.github.com/ccoVeille) in
    [#&#8203;1742](https://redirect.github.com/stretchr/testify/pull/1742)
    - mock: enable parallel testing on internal testsuite by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1756](https://redirect.github.com/stretchr/testify/pull/1756)
    - suite: cleanup use of 'testing' internals at runtime by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1751](https://redirect.github.com/stretchr/testify/pull/1751)
    - assert: check test failure message for Empty and NotEmpty by
    [@&#8203;ccoVeille](https://redirect.github.com/ccoVeille) in
    [#&#8203;1745](https://redirect.github.com/stretchr/testify/pull/1745)
    - deps: fix dependency cycle with objx (again) by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1567](https://redirect.github.com/stretchr/testify/pull/1567)
    - assert.Empty: comprehensive doc of "Empty"-ness rules by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1753](https://redirect.github.com/stretchr/testify/pull/1753)
    - doc: improve godoc of top level 'testify' package by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1760](https://redirect.github.com/stretchr/testify/pull/1760)
    - assert.ErrorAs: simplify retrieving the type name by
    [@&#8203;ccoVeille](https://redirect.github.com/ccoVeille) in
    [#&#8203;1740](https://redirect.github.com/stretchr/testify/pull/1740)
    - assert.EqualValues: improve test coverage to 100% by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1763](https://redirect.github.com/stretchr/testify/pull/1763)
    - suite.Run: simplify running of Setup/TeardownSuite by
    [@&#8203;renzoarreaza](https://redirect.github.com/renzoarreaza) in
    [#&#8203;1769](https://redirect.github.com/stretchr/testify/pull/1769)
    - assert.CallerInfo: micro optimization by using LastIndexByte by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1767](https://redirect.github.com/stretchr/testify/pull/1767)
    - assert.CallerInfo: micro cleanup by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1768](https://redirect.github.com/stretchr/testify/pull/1768)
    - assert: refactor Test*FileExists and Test*DirExists tests to enable
    parallel testing by [@&#8203;dolmen](https://redirect.github.com/dolmen)
    in
    [#&#8203;1766](https://redirect.github.com/stretchr/testify/pull/1766)
    - suite.Run: refactor handling of stats for improved readability by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [#&#8203;1764](https://redirect.github.com/stretchr/testify/pull/1764)
    - tests: improve captureTestingT helper by
    [@&#8203;ccoVeille](https://redirect.github.com/ccoVeille) in
    [#&#8203;1741](https://redirect.github.com/stretchr/testify/pull/1741)
    - build(deps): bump actions/checkout from 4 to 5 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;1778](https://redirect.github.com/stretchr/testify/pull/1778)
    
    #### New Contributors
    
    - [@&#8203;greg0ire](https://redirect.github.com/greg0ire) made their
    first contribution in
    [#&#8203;1710](https://redirect.github.com/stretchr/testify/pull/1710)
    - [@&#8203;techfg](https://redirect.github.com/techfg) made their first
    contribution in
    [#&#8203;1709](https://redirect.github.com/stretchr/testify/pull/1709)
    - [@&#8203;mikeauclair](https://redirect.github.com/mikeauclair) made
    their first contribution in
    [#&#8203;1614](https://redirect.github.com/stretchr/testify/pull/1614)
    - [@&#8203;cszczepaniak](https://redirect.github.com/cszczepaniak) made
    their first contribution in
    [#&#8203;1427](https://redirect.github.com/stretchr/testify/pull/1427)
    - [@&#8203;architagr](https://redirect.github.com/architagr) made their
    first contribution in
    [#&#8203;1675](https://redirect.github.com/stretchr/testify/pull/1675)
    - [@&#8203;tsioftas](https://redirect.github.com/tsioftas) made their
    first contribution in
    [#&#8203;1681](https://redirect.github.com/stretchr/testify/pull/1681)
    - [@&#8203;siliconbrain](https://redirect.github.com/siliconbrain) made
    their first contribution in
    [#&#8203;1729](https://redirect.github.com/stretchr/testify/pull/1729)
    - [@&#8203;bartventer](https://redirect.github.com/bartventer) made
    their first contribution in
    [#&#8203;1730](https://redirect.github.com/stretchr/testify/pull/1730)
    - [@&#8203;Ararsa-Derese](https://redirect.github.com/Ararsa-Derese)
    made their first contribution in
    [#&#8203;1706](https://redirect.github.com/stretchr/testify/pull/1706)
    - [@&#8203;renzoarreaza](https://redirect.github.com/renzoarreaza) made
    their first contribution in
    [#&#8203;1769](https://redirect.github.com/stretchr/testify/pull/1769)
    - [@&#8203;3scalation](https://redirect.github.com/3scalation) made
    their first contribution in
    [#&#8203;1743](https://redirect.github.com/stretchr/testify/pull/1743)
    
    **Full Changelog**:
    <https://github.com/stretchr/testify/compare/v1.10.0...v1.11.0>
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MS44Mi43IiwidXBkYXRlZEluVmVyIjoiNDEuOTcuMTAiLCJ0YXJnZXRCcmFuY2giOiJtYWluIiwibGFiZWxzIjpbImRlcGVuZGVuY2llcyIsInJlbm92YXRlYm90Il19-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
