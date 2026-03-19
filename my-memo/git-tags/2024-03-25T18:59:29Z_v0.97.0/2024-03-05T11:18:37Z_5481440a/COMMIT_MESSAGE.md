commit 5481440ad6b46a1cd577319a2c98acb04d7a26c6
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Mar 5 12:18:37 2024 +0100

    Update module github.com/stretchr/testify to v1.9.0 (#9695)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [github.com/stretchr/testify](https://togithub.com/stretchr/testify) |
    `v1.8.4` -> `v1.9.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fstretchr%2ftestify/v1.9.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fstretchr%2ftestify/v1.9.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fstretchr%2ftestify/v1.8.4/v1.9.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fstretchr%2ftestify/v1.8.4/v1.9.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>stretchr/testify (github.com/stretchr/testify)</summary>
    
    ###
    [`v1.9.0`](https://togithub.com/stretchr/testify/releases/tag/v1.9.0)
    
    [Compare
    Source](https://togithub.com/stretchr/testify/compare/v1.8.4...v1.9.0)
    
    #### What's Changed
    
    - Fix Go modules version by
    [@&#8203;SuperQ](https://togithub.com/SuperQ) in
    [https://github.com/stretchr/testify/pull/1394](https://togithub.com/stretchr/testify/pull/1394)
    - Document that require is not safe to call in created goroutines by
    [@&#8203;programmer04](https://togithub.com/programmer04) in
    [https://github.com/stretchr/testify/pull/1392](https://togithub.com/stretchr/testify/pull/1392)
    - Remove myself from MAINTAINERS.md by
    [@&#8203;mvdkleijn](https://togithub.com/mvdkleijn) in
    [https://github.com/stretchr/testify/pull/1367](https://togithub.com/stretchr/testify/pull/1367)
    - Correct spelling/grammar by
    [@&#8203;echarrod](https://togithub.com/echarrod) in
    [https://github.com/stretchr/testify/pull/1389](https://togithub.com/stretchr/testify/pull/1389)
    - docs: Update URLs in README by
    [@&#8203;davidjb](https://togithub.com/davidjb) in
    [https://github.com/stretchr/testify/pull/1349](https://togithub.com/stretchr/testify/pull/1349)
    - Update mockery link to Github Pages in README by
    [@&#8203;LandonTClipp](https://togithub.com/LandonTClipp) in
    [https://github.com/stretchr/testify/pull/1346](https://togithub.com/stretchr/testify/pull/1346)
    - docs: Fix typos in tests and comments by
    [@&#8203;alexandear](https://togithub.com/alexandear) in
    [https://github.com/stretchr/testify/pull/1410](https://togithub.com/stretchr/testify/pull/1410)
    - CI: tests from go1.17 by [@&#8203;SuperQ](https://togithub.com/SuperQ)
    in
    [https://github.com/stretchr/testify/pull/1409](https://togithub.com/stretchr/testify/pull/1409)
    - Fix adding ? when no values passed by
    [@&#8203;lesichkovm](https://togithub.com/lesichkovm) in
    [https://github.com/stretchr/testify/pull/1320](https://togithub.com/stretchr/testify/pull/1320)
    - codegen: use standard header for generated files by
    [@&#8203;dolmen](https://togithub.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1406](https://togithub.com/stretchr/testify/pull/1406)
    - mock: AssertExpectations log reason only on failure by
    [@&#8203;hikyaru-suzuki](https://togithub.com/hikyaru-suzuki) in
    [https://github.com/stretchr/testify/pull/1360](https://togithub.com/stretchr/testify/pull/1360)
    - assert: fix flaky TestNeverTrue by
    [@&#8203;dolmen](https://togithub.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1417](https://togithub.com/stretchr/testify/pull/1417)
    - README: fix typos "set up" vs "setup" by
    [@&#8203;ossan-dev](https://togithub.com/ossan-dev) in
    [https://github.com/stretchr/testify/pull/1428](https://togithub.com/stretchr/testify/pull/1428)
    - mock: move regexp compilation outside of `Called` by
    [@&#8203;aud10slave](https://togithub.com/aud10slave) in
    [https://github.com/stretchr/testify/pull/631](https://togithub.com/stretchr/testify/pull/631)
    - assert: refactor internal func getLen() by
    [@&#8203;dolmen](https://togithub.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1445](https://togithub.com/stretchr/testify/pull/1445)
    - mock: deprecate type AnythingOfTypeArgument
    ([#&#8203;1434](https://togithub.com/stretchr/testify/issues/1434)) by
    [@&#8203;dolmen](https://togithub.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1441](https://togithub.com/stretchr/testify/pull/1441)
    - Remove no longer needed assert.canConvert by
    [@&#8203;alexandear](https://togithub.com/alexandear) in
    [https://github.com/stretchr/testify/pull/1470](https://togithub.com/stretchr/testify/pull/1470)
    - assert: ObjectsAreEqual: use time.Equal for time.Time types by
    [@&#8203;tscales](https://togithub.com/tscales) in
    [https://github.com/stretchr/testify/pull/1464](https://togithub.com/stretchr/testify/pull/1464)
    - Bump actions/checkout from 3 to 4 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/stretchr/testify/pull/1466](https://togithub.com/stretchr/testify/pull/1466)
    - Bump actions/setup-go from 3.2.0 to 4.1.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/stretchr/testify/pull/1451](https://togithub.com/stretchr/testify/pull/1451)
    - fix: make EventuallyWithT concurrency safe by
    [@&#8203;czeslavo](https://togithub.com/czeslavo) in
    [https://github.com/stretchr/testify/pull/1395](https://togithub.com/stretchr/testify/pull/1395)
    - assert: fix httpCode and HTTPBody occur panic when http.Handler read
    Body by [@&#8203;hidu](https://togithub.com/hidu) in
    [https://github.com/stretchr/testify/pull/1484](https://togithub.com/stretchr/testify/pull/1484)
    - assert.EqualExportedValues: fix handling of arrays by
    [@&#8203;zrbecker](https://togithub.com/zrbecker) in
    [https://github.com/stretchr/testify/pull/1473](https://togithub.com/stretchr/testify/pull/1473)
    - .github: use latest Go versions by
    [@&#8203;kevinburkesegment](https://togithub.com/kevinburkesegment) in
    [https://github.com/stretchr/testify/pull/1489](https://togithub.com/stretchr/testify/pull/1489)
    - assert: Deprecate EqualExportedValues by
    [@&#8203;HaraldNordgren](https://togithub.com/HaraldNordgren) in
    [https://github.com/stretchr/testify/pull/1488](https://togithub.com/stretchr/testify/pull/1488)
    - suite: refactor test assertions by
    [@&#8203;alexandear](https://togithub.com/alexandear) in
    [https://github.com/stretchr/testify/pull/1474](https://togithub.com/stretchr/testify/pull/1474)
    - suite: fix SetupSubTest and TearDownSubTest execution order by
    [@&#8203;linusbarth](https://togithub.com/linusbarth) in
    [https://github.com/stretchr/testify/pull/1471](https://togithub.com/stretchr/testify/pull/1471)
    - docs: Fix deprecation comments for http package by
    [@&#8203;alexandear](https://togithub.com/alexandear) in
    [https://github.com/stretchr/testify/pull/1335](https://togithub.com/stretchr/testify/pull/1335)
    - Add map support doc comments to Subset and NotSubset by
    [@&#8203;jedevc](https://togithub.com/jedevc) in
    [https://github.com/stretchr/testify/pull/1306](https://togithub.com/stretchr/testify/pull/1306)
    - TestErrorIs/TestNotErrorIs: check error message contents by
    [@&#8203;craig65535](https://togithub.com/craig65535) in
    [https://github.com/stretchr/testify/pull/1435](https://togithub.com/stretchr/testify/pull/1435)
    - suite: fix subtest names (fix
    [#&#8203;1501](https://togithub.com/stretchr/testify/issues/1501)) by
    [@&#8203;dolmen](https://togithub.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1504](https://togithub.com/stretchr/testify/pull/1504)
    - assert: improve unsafe.Pointer tests by
    [@&#8203;dolmen](https://togithub.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1505](https://togithub.com/stretchr/testify/pull/1505)
    - assert: simplify isNil implementation by
    [@&#8203;dolmen](https://togithub.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1506](https://togithub.com/stretchr/testify/pull/1506)
    - assert.InEpsilonSlice: fix expected/actual order and other
    improvements by [@&#8203;dolmen](https://togithub.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1483](https://togithub.com/stretchr/testify/pull/1483)
    - Fix dependency cycle with objx
    [#&#8203;1292](https://togithub.com/stretchr/testify/issues/1292) by
    [@&#8203;dolmen](https://togithub.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1453](https://togithub.com/stretchr/testify/pull/1453)
    - mock: refactor TestIsArgsEqual by
    [@&#8203;dolmen](https://togithub.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1444](https://togithub.com/stretchr/testify/pull/1444)
    - mock: optimize argument matching checks by
    [@&#8203;dolmen](https://togithub.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1416](https://togithub.com/stretchr/testify/pull/1416)
    - assert: fix TestEventuallyTimeout by
    [@&#8203;dolmen](https://togithub.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1412](https://togithub.com/stretchr/testify/pull/1412)
    - CI: add go 1.21 in GitHub Actions by
    [@&#8203;dolmen](https://togithub.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1450](https://togithub.com/stretchr/testify/pull/1450)
    - suite: fix recoverAndFailOnPanic to report test failure at the right
    location by [@&#8203;dolmen](https://togithub.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1502](https://togithub.com/stretchr/testify/pull/1502)
    - Update maintainers by
    [@&#8203;brackendawson](https://togithub.com/brackendawson) in
    [https://github.com/stretchr/testify/pull/1533](https://togithub.com/stretchr/testify/pull/1533)
    - assert: Fix EqualValues to handle overflow/underflow by
    [@&#8203;arjunmahishi](https://togithub.com/arjunmahishi) in
    [https://github.com/stretchr/testify/pull/1531](https://togithub.com/stretchr/testify/pull/1531)
    - assert: better formatting for Len() error by
    [@&#8203;kevinburkesegment](https://togithub.com/kevinburkesegment) in
    [https://github.com/stretchr/testify/pull/1485](https://togithub.com/stretchr/testify/pull/1485)
    - Ensure AssertExpectations does not fail in skipped tests by
    [@&#8203;ianrose14](https://togithub.com/ianrose14) in
    [https://github.com/stretchr/testify/pull/1331](https://togithub.com/stretchr/testify/pull/1331)
    - suite: fix deadlock in suite.Require()/Assert() by
    [@&#8203;arjunmahishi](https://togithub.com/arjunmahishi) in
    [https://github.com/stretchr/testify/pull/1535](https://togithub.com/stretchr/testify/pull/1535)
    - Revert "assert: ObjectsAreEqual: use time.Equal for time.Time type" by
    [@&#8203;brackendawson](https://togithub.com/brackendawson) in
    [https://github.com/stretchr/testify/pull/1537](https://togithub.com/stretchr/testify/pull/1537)
    - \[chore] Add issue templates by
    [@&#8203;arjunmahishi](https://togithub.com/arjunmahishi) in
    [https://github.com/stretchr/testify/pull/1538](https://togithub.com/stretchr/testify/pull/1538)
    - Update the build status badge by
    [@&#8203;brackendawson](https://togithub.com/brackendawson) in
    [https://github.com/stretchr/testify/pull/1540](https://togithub.com/stretchr/testify/pull/1540)
    - Update Github workflows setup-go to V5 by
    [@&#8203;hendrywiranto](https://togithub.com/hendrywiranto) in
    [https://github.com/stretchr/testify/pull/1545](https://togithub.com/stretchr/testify/pull/1545)
    - Support Pointer to Struct in EqualExportedValues by
    [@&#8203;Lucaber](https://togithub.com/Lucaber) in
    [https://github.com/stretchr/testify/pull/1517](https://togithub.com/stretchr/testify/pull/1517)
    - README: drop link to gorc by
    [@&#8203;guettli](https://togithub.com/guettli) in
    [https://github.com/stretchr/testify/pull/1248](https://togithub.com/stretchr/testify/pull/1248)
    - http_assertions: honour the msgAndArgs provided with each assertion by
    [@&#8203;arjunmahishi](https://togithub.com/arjunmahishi) in
    [https://github.com/stretchr/testify/pull/1548](https://togithub.com/stretchr/testify/pull/1548)
    - fix typos in comments and tests by
    [@&#8203;ccoVeille](https://togithub.com/ccoVeille) in
    [https://github.com/stretchr/testify/pull/1247](https://togithub.com/stretchr/testify/pull/1247)
    - Include the auto-release notes in releases by
    [@&#8203;brackendawson](https://togithub.com/brackendawson) in
    [https://github.com/stretchr/testify/pull/1550](https://togithub.com/stretchr/testify/pull/1550)
    - Add `NotImplements` and variants by
    [@&#8203;hslatman](https://togithub.com/hslatman) in
    [https://github.com/stretchr/testify/pull/1385](https://togithub.com/stretchr/testify/pull/1385)
    - Add support to compare uintptr by
    [@&#8203;bogdandrutu](https://togithub.com/bogdandrutu) in
    [https://github.com/stretchr/testify/pull/1339](https://togithub.com/stretchr/testify/pull/1339)
    - build(deps): bump github.com/stretchr/objx from 0.5.1 to 0.5.2 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/stretchr/testify/pull/1552](https://togithub.com/stretchr/testify/pull/1552)
    
    #### New Contributors
    
    - [@&#8203;SuperQ](https://togithub.com/SuperQ) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1394](https://togithub.com/stretchr/testify/pull/1394)
    - [@&#8203;programmer04](https://togithub.com/programmer04) made their
    first contribution in
    [https://github.com/stretchr/testify/pull/1392](https://togithub.com/stretchr/testify/pull/1392)
    - [@&#8203;echarrod](https://togithub.com/echarrod) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1389](https://togithub.com/stretchr/testify/pull/1389)
    - [@&#8203;davidjb](https://togithub.com/davidjb) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1349](https://togithub.com/stretchr/testify/pull/1349)
    - [@&#8203;LandonTClipp](https://togithub.com/LandonTClipp) made their
    first contribution in
    [https://github.com/stretchr/testify/pull/1346](https://togithub.com/stretchr/testify/pull/1346)
    - [@&#8203;alexandear](https://togithub.com/alexandear) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1410](https://togithub.com/stretchr/testify/pull/1410)
    - [@&#8203;lesichkovm](https://togithub.com/lesichkovm) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1320](https://togithub.com/stretchr/testify/pull/1320)
    - [@&#8203;dolmen](https://togithub.com/dolmen) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1406](https://togithub.com/stretchr/testify/pull/1406)
    - [@&#8203;hikyaru-suzuki](https://togithub.com/hikyaru-suzuki) made
    their first contribution in
    [https://github.com/stretchr/testify/pull/1360](https://togithub.com/stretchr/testify/pull/1360)
    - [@&#8203;ossan-dev](https://togithub.com/ossan-dev) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1428](https://togithub.com/stretchr/testify/pull/1428)
    - [@&#8203;aud10slave](https://togithub.com/aud10slave) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/631](https://togithub.com/stretchr/testify/pull/631)
    - [@&#8203;tscales](https://togithub.com/tscales) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1464](https://togithub.com/stretchr/testify/pull/1464)
    - [@&#8203;czeslavo](https://togithub.com/czeslavo) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1395](https://togithub.com/stretchr/testify/pull/1395)
    - [@&#8203;hidu](https://togithub.com/hidu) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1484](https://togithub.com/stretchr/testify/pull/1484)
    - [@&#8203;zrbecker](https://togithub.com/zrbecker) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1473](https://togithub.com/stretchr/testify/pull/1473)
    - [@&#8203;kevinburkesegment](https://togithub.com/kevinburkesegment)
    made their first contribution in
    [https://github.com/stretchr/testify/pull/1489](https://togithub.com/stretchr/testify/pull/1489)
    - [@&#8203;linusbarth](https://togithub.com/linusbarth) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1471](https://togithub.com/stretchr/testify/pull/1471)
    - [@&#8203;jedevc](https://togithub.com/jedevc) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1306](https://togithub.com/stretchr/testify/pull/1306)
    - [@&#8203;craig65535](https://togithub.com/craig65535) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1435](https://togithub.com/stretchr/testify/pull/1435)
    - [@&#8203;arjunmahishi](https://togithub.com/arjunmahishi) made their
    first contribution in
    [https://github.com/stretchr/testify/pull/1531](https://togithub.com/stretchr/testify/pull/1531)
    - [@&#8203;ianrose14](https://togithub.com/ianrose14) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1331](https://togithub.com/stretchr/testify/pull/1331)
    - [@&#8203;hendrywiranto](https://togithub.com/hendrywiranto) made their
    first contribution in
    [https://github.com/stretchr/testify/pull/1545](https://togithub.com/stretchr/testify/pull/1545)
    - [@&#8203;Lucaber](https://togithub.com/Lucaber) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1517](https://togithub.com/stretchr/testify/pull/1517)
    - [@&#8203;guettli](https://togithub.com/guettli) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1248](https://togithub.com/stretchr/testify/pull/1248)
    - [@&#8203;ccoVeille](https://togithub.com/ccoVeille) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1247](https://togithub.com/stretchr/testify/pull/1247)
    - [@&#8203;hslatman](https://togithub.com/hslatman) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1385](https://togithub.com/stretchr/testify/pull/1385)
    - [@&#8203;bogdandrutu](https://togithub.com/bogdandrutu) made their
    first contribution in
    [https://github.com/stretchr/testify/pull/1339](https://togithub.com/stretchr/testify/pull/1339)
    
    **Full Changelog**:
    https://github.com/stretchr/testify/compare/v1.8.4...v1.9.0
    
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
    
    This PR has been generated by [Mend
    Renovate](https://www.mend.io/free-developer-tools/renovate/). View
    repository job log
    [here](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4yMjAuMiIsInVwZGF0ZWRJblZlciI6IjM3LjIyMC4yIiwidGFyZ2V0QnJhbmNoIjoibWFpbiJ9-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
