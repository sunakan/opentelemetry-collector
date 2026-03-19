commit e91dafacd9c6f9ae8a89f79ae4a994c254725e10
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Nov 26 11:09:39 2024 -0800

    fix(deps): update module github.com/stretchr/testify to v1.10.0 (#11751)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [github.com/stretchr/testify](https://redirect.github.com/stretchr/testify)
    | `v1.9.0` -> `v1.10.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fstretchr%2ftestify/v1.10.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fstretchr%2ftestify/v1.10.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fstretchr%2ftestify/v1.9.0/v1.10.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fstretchr%2ftestify/v1.9.0/v1.10.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v1.10.0`](https://redirect.github.com/stretchr/testify/releases/tag/v1.10.0)
    
    [Compare
    Source](https://redirect.github.com/stretchr/testify/compare/v1.9.0...v1.10.0)
    
    #### What's Changed
    
    ##### Functional Changes
    
    - Add PanicAssertionFunc by
    [@&#8203;fahimbagar](https://redirect.github.com/fahimbagar) in
    [https://github.com/stretchr/testify/pull/1337](https://redirect.github.com/stretchr/testify/pull/1337)
    - assert: deprecate CompareType by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1566](https://redirect.github.com/stretchr/testify/pull/1566)
    - assert: make YAML dependency pluggable via build tags by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1579](https://redirect.github.com/stretchr/testify/pull/1579)
    - assert: new assertion NotElementsMatch by
    [@&#8203;hendrywiranto](https://redirect.github.com/hendrywiranto) in
    [https://github.com/stretchr/testify/pull/1600](https://redirect.github.com/stretchr/testify/pull/1600)
    - mock: in order mock calls by
    [@&#8203;ReyOrtiz](https://redirect.github.com/ReyOrtiz) in
    [https://github.com/stretchr/testify/pull/1637](https://redirect.github.com/stretchr/testify/pull/1637)
    - Add assertion for NotErrorAs by
    [@&#8203;palsivertsen](https://redirect.github.com/palsivertsen) in
    [https://github.com/stretchr/testify/pull/1129](https://redirect.github.com/stretchr/testify/pull/1129)
    - Record Return Arguments of a Call by
    [@&#8203;jayd3e](https://redirect.github.com/jayd3e) in
    [https://github.com/stretchr/testify/pull/1636](https://redirect.github.com/stretchr/testify/pull/1636)
    - assert.EqualExportedValues: accepts everything by
    [@&#8203;redachl](https://redirect.github.com/redachl) in
    [https://github.com/stretchr/testify/pull/1586](https://redirect.github.com/stretchr/testify/pull/1586)
    
    ##### Fixes
    
    - assert: make tHelper a type alias by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1562](https://redirect.github.com/stretchr/testify/pull/1562)
    - Do not get argument again unnecessarily in Arguments.Error() by
    [@&#8203;TomWright](https://redirect.github.com/TomWright) in
    [https://github.com/stretchr/testify/pull/820](https://redirect.github.com/stretchr/testify/pull/820)
    - Fix time.Time compare by
    [@&#8203;myxo](https://redirect.github.com/myxo) in
    [https://github.com/stretchr/testify/pull/1582](https://redirect.github.com/stretchr/testify/pull/1582)
    - assert.Regexp: handle \[]byte array properly by
    [@&#8203;kevinburkesegment](https://redirect.github.com/kevinburkesegment)
    in
    [https://github.com/stretchr/testify/pull/1587](https://redirect.github.com/stretchr/testify/pull/1587)
    - assert: collect.FailNow() should not panic by
    [@&#8203;marshall-lee](https://redirect.github.com/marshall-lee) in
    [https://github.com/stretchr/testify/pull/1481](https://redirect.github.com/stretchr/testify/pull/1481)
    - mock: simplify implementation of FunctionalOptions by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1571](https://redirect.github.com/stretchr/testify/pull/1571)
    - mock: caller information for unexpected method call by
    [@&#8203;spirin](https://redirect.github.com/spirin) in
    [https://github.com/stretchr/testify/pull/1644](https://redirect.github.com/stretchr/testify/pull/1644)
    - suite: fix test failures by
    [@&#8203;stevenh](https://redirect.github.com/stevenh) in
    [https://github.com/stretchr/testify/pull/1421](https://redirect.github.com/stretchr/testify/pull/1421)
    - Fix issue
    [#&#8203;1662](https://redirect.github.com/stretchr/testify/issues/1662)
    (comparing infs should fail) by
    [@&#8203;ybrustin](https://redirect.github.com/ybrustin) in
    [https://github.com/stretchr/testify/pull/1663](https://redirect.github.com/stretchr/testify/pull/1663)
    - NotSame should fail if args are not pointers
    [#&#8203;1661](https://redirect.github.com/stretchr/testify/issues/1661)
    by [@&#8203;sikehish](https://redirect.github.com/sikehish) in
    [https://github.com/stretchr/testify/pull/1664](https://redirect.github.com/stretchr/testify/pull/1664)
    - Increase timeouts in Test_Mock_Called_blocks to reduce flakiness in CI
    by [@&#8203;sikehish](https://redirect.github.com/sikehish) in
    [https://github.com/stretchr/testify/pull/1667](https://redirect.github.com/stretchr/testify/pull/1667)
    - fix: compare functional option names for indirect calls by
    [@&#8203;arjun-1](https://redirect.github.com/arjun-1) in
    [https://github.com/stretchr/testify/pull/1626](https://redirect.github.com/stretchr/testify/pull/1626)
    
    ##### Documantation, Build & CI
    
    - .gitignore: ignore "go test -c" binaries by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1565](https://redirect.github.com/stretchr/testify/pull/1565)
    - mock: improve doc by
    [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1570](https://redirect.github.com/stretchr/testify/pull/1570)
    - mock: fix FunctionalOptions docs by
    [@&#8203;snirye](https://redirect.github.com/snirye) in
    [https://github.com/stretchr/testify/pull/1433](https://redirect.github.com/stretchr/testify/pull/1433)
    - README: link out to the excellent testifylint by
    [@&#8203;brackendawson](https://redirect.github.com/brackendawson) in
    [https://github.com/stretchr/testify/pull/1568](https://redirect.github.com/stretchr/testify/pull/1568)
    - assert: fix typo in comment by
    [@&#8203;JohnEndson](https://redirect.github.com/JohnEndson) in
    [https://github.com/stretchr/testify/pull/1580](https://redirect.github.com/stretchr/testify/pull/1580)
    - Correct the EventuallyWithT and EventuallyWithTf example by
    [@&#8203;JonCrowther](https://redirect.github.com/JonCrowther) in
    [https://github.com/stretchr/testify/pull/1588](https://redirect.github.com/stretchr/testify/pull/1588)
    - CI: bump softprops/action-gh-release from 1 to 2 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/stretchr/testify/pull/1575](https://redirect.github.com/stretchr/testify/pull/1575)
    - mock: document more alternatives to deprecated AnythingOfTypeArgument
    by [@&#8203;dolmen](https://redirect.github.com/dolmen) in
    [https://github.com/stretchr/testify/pull/1569](https://redirect.github.com/stretchr/testify/pull/1569)
    - assert: Correctly document EqualValues behavior by
    [@&#8203;brackendawson](https://redirect.github.com/brackendawson) in
    [https://github.com/stretchr/testify/pull/1593](https://redirect.github.com/stretchr/testify/pull/1593)
    - fix: grammar in godoc by
    [@&#8203;miparnisari](https://redirect.github.com/miparnisari) in
    [https://github.com/stretchr/testify/pull/1607](https://redirect.github.com/stretchr/testify/pull/1607)
    - .github/workflows: Run tests for Go 1.22 by
    [@&#8203;HaraldNordgren](https://redirect.github.com/HaraldNordgren) in
    [https://github.com/stretchr/testify/pull/1629](https://redirect.github.com/stretchr/testify/pull/1629)
    - Document suite's lack of support for t.Parallel by
    [@&#8203;brackendawson](https://redirect.github.com/brackendawson) in
    [https://github.com/stretchr/testify/pull/1645](https://redirect.github.com/stretchr/testify/pull/1645)
    - assert: fix typos in comments by
    [@&#8203;alexandear](https://redirect.github.com/alexandear) in
    [https://github.com/stretchr/testify/pull/1650](https://redirect.github.com/stretchr/testify/pull/1650)
    - mock: fix doc comment for NotBefore by
    [@&#8203;alexandear](https://redirect.github.com/alexandear) in
    [https://github.com/stretchr/testify/pull/1651](https://redirect.github.com/stretchr/testify/pull/1651)
    - Generate better comments for require package by
    [@&#8203;Neokil](https://redirect.github.com/Neokil) in
    [https://github.com/stretchr/testify/pull/1610](https://redirect.github.com/stretchr/testify/pull/1610)
    - README: replace Testify V2 notice with
    [@&#8203;dolmen](https://redirect.github.com/dolmen)'s V2 manifesto by
    [@&#8203;hendrywiranto](https://redirect.github.com/hendrywiranto) in
    [https://github.com/stretchr/testify/pull/1518](https://redirect.github.com/stretchr/testify/pull/1518)
    
    #### New Contributors
    
    - [@&#8203;fahimbagar](https://redirect.github.com/fahimbagar) made
    their first contribution in
    [https://github.com/stretchr/testify/pull/1337](https://redirect.github.com/stretchr/testify/pull/1337)
    - [@&#8203;TomWright](https://redirect.github.com/TomWright) made their
    first contribution in
    [https://github.com/stretchr/testify/pull/820](https://redirect.github.com/stretchr/testify/pull/820)
    - [@&#8203;snirye](https://redirect.github.com/snirye) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1433](https://redirect.github.com/stretchr/testify/pull/1433)
    - [@&#8203;myxo](https://redirect.github.com/myxo) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1582](https://redirect.github.com/stretchr/testify/pull/1582)
    - [@&#8203;JohnEndson](https://redirect.github.com/JohnEndson) made
    their first contribution in
    [https://github.com/stretchr/testify/pull/1580](https://redirect.github.com/stretchr/testify/pull/1580)
    - [@&#8203;JonCrowther](https://redirect.github.com/JonCrowther) made
    their first contribution in
    [https://github.com/stretchr/testify/pull/1588](https://redirect.github.com/stretchr/testify/pull/1588)
    - [@&#8203;miparnisari](https://redirect.github.com/miparnisari) made
    their first contribution in
    [https://github.com/stretchr/testify/pull/1607](https://redirect.github.com/stretchr/testify/pull/1607)
    - [@&#8203;marshall-lee](https://redirect.github.com/marshall-lee) made
    their first contribution in
    [https://github.com/stretchr/testify/pull/1481](https://redirect.github.com/stretchr/testify/pull/1481)
    - [@&#8203;spirin](https://redirect.github.com/spirin) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1644](https://redirect.github.com/stretchr/testify/pull/1644)
    - [@&#8203;ReyOrtiz](https://redirect.github.com/ReyOrtiz) made their
    first contribution in
    [https://github.com/stretchr/testify/pull/1637](https://redirect.github.com/stretchr/testify/pull/1637)
    - [@&#8203;stevenh](https://redirect.github.com/stevenh) made their
    first contribution in
    [https://github.com/stretchr/testify/pull/1421](https://redirect.github.com/stretchr/testify/pull/1421)
    - [@&#8203;jayd3e](https://redirect.github.com/jayd3e) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1636](https://redirect.github.com/stretchr/testify/pull/1636)
    - [@&#8203;Neokil](https://redirect.github.com/Neokil) made their first
    contribution in
    [https://github.com/stretchr/testify/pull/1610](https://redirect.github.com/stretchr/testify/pull/1610)
    - [@&#8203;redachl](https://redirect.github.com/redachl) made their
    first contribution in
    [https://github.com/stretchr/testify/pull/1586](https://redirect.github.com/stretchr/testify/pull/1586)
    - [@&#8203;ybrustin](https://redirect.github.com/ybrustin) made their
    first contribution in
    [https://github.com/stretchr/testify/pull/1663](https://redirect.github.com/stretchr/testify/pull/1663)
    - [@&#8203;sikehish](https://redirect.github.com/sikehish) made their
    first contribution in
    [https://github.com/stretchr/testify/pull/1664](https://redirect.github.com/stretchr/testify/pull/1664)
    - [@&#8203;arjun-1](https://redirect.github.com/arjun-1) made their
    first contribution in
    [https://github.com/stretchr/testify/pull/1626](https://redirect.github.com/stretchr/testify/pull/1626)
    
    **Full Changelog**:
    https://github.com/stretchr/testify/compare/v1.9.0...v1.10.0
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS4xOS4wIiwidXBkYXRlZEluVmVyIjoiMzkuMTkuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
