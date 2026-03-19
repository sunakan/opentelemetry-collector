commit 789d263a53229ddebe84d6e8b1e784c8ad072729
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Aug 20 09:10:02 2024 -0700

    fix(deps): update module github.com/prometheus/client_golang to v1.20.0 (#10918)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [github.com/prometheus/client_golang](https://togithub.com/prometheus/client_golang)
    | `v1.19.1` -> `v1.20.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fprometheus%2fclient_golang/v1.20.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fprometheus%2fclient_golang/v1.20.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fprometheus%2fclient_golang/v1.19.1/v1.20.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fprometheus%2fclient_golang/v1.19.1/v1.20.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>prometheus/client_golang
    (github.com/prometheus/client_golang)</summary>
    
    ###
    [`v1.20.0`](https://togithub.com/prometheus/client_golang/releases/tag/v1.20.0)
    
    [Compare
    Source](https://togithub.com/prometheus/client_golang/compare/v1.19.1...v1.20.0)
    
    Thanks everyone for contributions!
    
    :warning: In this release we remove one (broken anyway, given Go runtime
    changes) metric and add three new (representing GOGC, GOMEMLIMIT and
    GOMAXPROCS flags) to the default `collectors.NewGoCollector()`
    collector. Given its popular usage, expect your binary to expose two
    additional metric.
    
    #### Changes
    
    - \[CHANGE] :warning: go-collector: Remove `go_memstat_lookups_total`
    metric which was always 0; Go runtime stopped sharing pointer lookup
    statistics.
    [#&#8203;1577](https://togithub.com/prometheus/client_golang/issues/1577)
    - \[FEATURE] :warning: go-collector: Add 3 default metrics:
    `go_gc_gogc_percent`, `go_gc_gomemlimit_bytes` and
    `go_sched_gomaxprocs_threads` as those are recommended by the Go team.
    [#&#8203;1559](https://togithub.com/prometheus/client_golang/issues/1559)
    - \[FEATURE] go-collector: Add more information to all metrics' HELP
    e.g. the exact `runtime/metrics` sourcing each metric (if relevant).
    [#&#8203;1568](https://togithub.com/prometheus/client_golang/issues/1568)
    [#&#8203;1578](https://togithub.com/prometheus/client_golang/issues/1578)
    - \[FEATURE] testutil: Add CollectAndFormat method.
    [#&#8203;1503](https://togithub.com/prometheus/client_golang/issues/1503)
    - \[FEATURE] histograms: Add support for exemplars in native histograms.
    [#&#8203;1471](https://togithub.com/prometheus/client_golang/issues/1471)
    - \[FEATURE] promhttp: Add experimental support for `zstd` on scrape,
    controlled by the request `Accept-Encoding` header.
    [#&#8203;1496](https://togithub.com/prometheus/client_golang/issues/1496)
    - \[FEATURE] api/v1: Add `WithLimit` parameter to all API methods that
    supports it.
    [#&#8203;1544](https://togithub.com/prometheus/client_golang/issues/1544)
    - \[FEATURE] prometheus: Add support for created timestamps in constant
    histograms and constant summaries.
    [#&#8203;1537](https://togithub.com/prometheus/client_golang/issues/1537)
    - \[FEATURE] process-collectors: Add network usage metrics:
    `process_network_receive_bytes_total` and
    `process_network_transmit_bytes_total`.
    [#&#8203;1555](https://togithub.com/prometheus/client_golang/issues/1555)
    - \[FEATURE] promlint: Add duplicated metric lint rule.
    [#&#8203;1472](https://togithub.com/prometheus/client_golang/issues/1472)
    - \[BUGFIX] promlint: Relax metric type in name linter rule.
    [#&#8203;1455](https://togithub.com/prometheus/client_golang/issues/1455)
    -   \[BUGFIX] promhttp: Make sure server
    instrumentation wrapping supports new and future extra responseWriter
    methods.
    [#&#8203;1480](https://togithub.com/prometheus/client_golang/issues/1480)
    - \[BUGFIX] testutil: Functions using compareMetricFamilies are now
    failing if filtered metricNames are not in the input.
    [#&#8203;1424](https://togithub.com/prometheus/client_golang/issues/1424)
    
    <details>
      <summary>All commits</summary>
    
    - feat(prometheus/testutil/promlint/validations): refine lintMetricType…
    by [@&#8203;foehammer127](https://togithub.com/foehammer127) in
    [https://github.com/prometheus/client_golang/pull/1455](https://togithub.com/prometheus/client_golang/pull/1455)
    - Bump github.com/prometheus/client_golang from 1.18.0 to 1.19.0 in
    /examples/middleware by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1457](https://togithub.com/prometheus/client_golang/pull/1457)
    - Bump github.com/prometheus/client_model from 0.5.0 to 0.6.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1458](https://togithub.com/prometheus/client_golang/pull/1458)
    - Bump golang.org/x/sys from 0.16.0 to 0.17.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1459](https://togithub.com/prometheus/client_golang/pull/1459)
    - Bump github.com/prometheus/client_golang from 1.18.0 to 1.19.0 in
    /tutorial/whatsup by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1461](https://togithub.com/prometheus/client_golang/pull/1461)
    - Merge Release 1.19 back to main by
    [@&#8203;ArthurSens](https://togithub.com/ArthurSens) in
    [https://github.com/prometheus/client_golang/pull/1462](https://togithub.com/prometheus/client_golang/pull/1462)
    - Bump the github-actions group with 2 updates by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1456](https://togithub.com/prometheus/client_golang/pull/1456)
    - Bump google.golang.org/protobuf from 1.32.0 to 1.33.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1466](https://togithub.com/prometheus/client_golang/pull/1466)
    - Bump google.golang.org/protobuf from 1.32.0 to 1.33.0 in
    /examples/middleware by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1467](https://togithub.com/prometheus/client_golang/pull/1467)
    - Bump google.golang.org/protobuf from 1.32.0 to 1.33.0 in
    /tutorial/whatsup by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1469](https://togithub.com/prometheus/client_golang/pull/1469)
    - Add LintDuplicateMetric to promlint by
    [@&#8203;bboreham](https://togithub.com/bboreham) in
    [https://github.com/prometheus/client_golang/pull/1472](https://togithub.com/prometheus/client_golang/pull/1472)
    - Auto-update Go Collector Metrics for new Go versions by
    [@&#8203;SachinSahu431](https://togithub.com/SachinSahu431) in
    [https://github.com/prometheus/client_golang/pull/1476](https://togithub.com/prometheus/client_golang/pull/1476)
    - Implement Unwrap() for responseWriterDelegator by
    [@&#8203;igor-drozdov](https://togithub.com/igor-drozdov) in
    [https://github.com/prometheus/client_golang/pull/1480](https://togithub.com/prometheus/client_golang/pull/1480)
    - Bump golang.org/x/sys from 0.17.0 to 0.18.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1485](https://togithub.com/prometheus/client_golang/pull/1485)
    - Bump github.com/prometheus/procfs from 0.12.0 to 0.13.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1486](https://togithub.com/prometheus/client_golang/pull/1486)
    - ci: Remove hardcoded supported Go versions from go.yml by
    [@&#8203;SachinSahu431](https://togithub.com/SachinSahu431) in
    [https://github.com/prometheus/client_golang/pull/1489](https://togithub.com/prometheus/client_golang/pull/1489)
    - feat: metrics generation workflow by
    [@&#8203;SachinSahu431](https://togithub.com/SachinSahu431) in
    [https://github.com/prometheus/client_golang/pull/1481](https://togithub.com/prometheus/client_golang/pull/1481)
    - fix: remove redundant go module in middleware example by
    [@&#8203;majolo](https://togithub.com/majolo) in
    [https://github.com/prometheus/client_golang/pull/1492](https://togithub.com/prometheus/client_golang/pull/1492)
    - chore: Refactor how base metrics are added to Sched metrics by
    [@&#8203;ArthurSens](https://togithub.com/ArthurSens) in
    [https://github.com/prometheus/client_golang/pull/1483](https://togithub.com/prometheus/client_golang/pull/1483)
    - gocollector: Add regex option to allow collection of debug runtime
    metrics by [@&#8203;ArthurSens](https://togithub.com/ArthurSens) in
    [https://github.com/prometheus/client_golang/pull/1389](https://togithub.com/prometheus/client_golang/pull/1389)
    - Bump github.com/prometheus/common from 0.48.0 to 0.52.3 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1498](https://togithub.com/prometheus/client_golang/pull/1498)
    - chore: fix function name in comment by
    [@&#8203;oftenoccur](https://togithub.com/oftenoccur) in
    [https://github.com/prometheus/client_golang/pull/1497](https://togithub.com/prometheus/client_golang/pull/1497)
    - build(deps): bump golang.org/x/net from 0.20.0 to 0.23.0 in
    /tutorial/whatsup by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1501](https://togithub.com/prometheus/client_golang/pull/1501)
    - build(deps): bump golang.org/x/net from 0.22.0 to 0.23.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1502](https://togithub.com/prometheus/client_golang/pull/1502)
    - feat(dependency): replace go-spew package by
    [@&#8203;dongjiang1989](https://togithub.com/dongjiang1989) in
    [https://github.com/prometheus/client_golang/pull/1499](https://togithub.com/prometheus/client_golang/pull/1499)
    - build(deps): bump github.com/prometheus/common from 0.52.3 to 0.53.0
    by [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1504](https://togithub.com/prometheus/client_golang/pull/1504)
    - build(deps): bump github.com/cespare/xxhash/v2 from 2.2.0 to 2.3.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1505](https://togithub.com/prometheus/client_golang/pull/1505)
    - build(deps): bump google.golang.org/protobuf from 1.33.0 to 1.34.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1506](https://togithub.com/prometheus/client_golang/pull/1506)
    - build(deps): bump golang.org/x/sys from 0.18.0 to 0.19.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1507](https://togithub.com/prometheus/client_golang/pull/1507)
    - build(deps): bump github.com/prometheus/client_model from 0.6.0 to
    0.6.1 by [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1508](https://togithub.com/prometheus/client_golang/pull/1508)
    - build(deps): bump github.com/prometheus/common from 0.48.0 to 0.53.0
    in /tutorial/whatsup by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1509](https://togithub.com/prometheus/client_golang/pull/1509)
    - improved code more clean by
    [@&#8203;lilijreey](https://togithub.com/lilijreey) in
    [https://github.com/prometheus/client_golang/pull/1511](https://togithub.com/prometheus/client_golang/pull/1511)
    - build(deps): bump the github-actions group with 3 updates by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1510](https://togithub.com/prometheus/client_golang/pull/1510)
    - \[CI]: Add Concurrency Grouping to GitHub Workflows by
    [@&#8203;Ishani217](https://togithub.com/Ishani217) in
    [https://github.com/prometheus/client_golang/pull/1444](https://togithub.com/prometheus/client_golang/pull/1444)
    - Add CollectAndFormat to testutil, allowing caller to assert as they
    want to on the exported metric by
    [@&#8203;jcass8695](https://togithub.com/jcass8695) in
    [https://github.com/prometheus/client_golang/pull/1503](https://togithub.com/prometheus/client_golang/pull/1503)
    - testutil compareMetricFamilies: make less error-prone by
    [@&#8203;leonnicolas](https://togithub.com/leonnicolas) in
    [https://github.com/prometheus/client_golang/pull/1424](https://togithub.com/prometheus/client_golang/pull/1424)
    - improved code more clean use time.IsZero() replace t = time.Time{} by
    [@&#8203;lilijreey](https://togithub.com/lilijreey) in
    [https://github.com/prometheus/client_golang/pull/1515](https://togithub.com/prometheus/client_golang/pull/1515)
    - add native histogram exemplar support by
    [@&#8203;fatsheep9146](https://togithub.com/fatsheep9146) in
    [https://github.com/prometheus/client_golang/pull/1471](https://togithub.com/prometheus/client_golang/pull/1471)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/client_golang/pull/1514](https://togithub.com/prometheus/client_golang/pull/1514)
    - build(deps): bump golang.org/x/sys from 0.19.0 to 0.20.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1523](https://togithub.com/prometheus/client_golang/pull/1523)
    - build(deps): bump google.golang.org/protobuf from 1.34.0 to 1.34.1 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1522](https://togithub.com/prometheus/client_golang/pull/1522)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/client_golang/pull/1524](https://togithub.com/prometheus/client_golang/pull/1524)
    - Add PR template for changelog automation by
    [@&#8203;SachinSahu431](https://togithub.com/SachinSahu431) in
    [https://github.com/prometheus/client_golang/pull/1517](https://togithub.com/prometheus/client_golang/pull/1517)
    - Auto label PRs by
    [@&#8203;SachinSahu431](https://togithub.com/SachinSahu431) in
    [https://github.com/prometheus/client_golang/pull/1518](https://togithub.com/prometheus/client_golang/pull/1518)
    - Fix: Auto label PRs
    [#&#8203;1518](https://togithub.com/prometheus/client_golang/issues/1518)
    by [@&#8203;SachinSahu431](https://togithub.com/SachinSahu431) in
    [https://github.com/prometheus/client_golang/pull/1525](https://togithub.com/prometheus/client_golang/pull/1525)
    - build(deps): bump github.com/prometheus/procfs from 0.13.0 to 0.15.1
    by [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1527](https://togithub.com/prometheus/client_golang/pull/1527)
    - ci: Group all changelog-related CI jobs into single one by
    [@&#8203;ArthurSens](https://togithub.com/ArthurSens) in
    [https://github.com/prometheus/client_golang/pull/1526](https://togithub.com/prometheus/client_golang/pull/1526)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/client_golang/pull/1530](https://togithub.com/prometheus/client_golang/pull/1530)
    - Remove synchronize trigger from changelog workflow by
    [@&#8203;SachinSahu431](https://togithub.com/SachinSahu431) in
    [https://github.com/prometheus/client_golang/pull/1532](https://togithub.com/prometheus/client_golang/pull/1532)
    - feat: Support zstd compression by
    [@&#8203;mrueg](https://togithub.com/mrueg) in
    [https://github.com/prometheus/client_golang/pull/1496](https://togithub.com/prometheus/client_golang/pull/1496)
    - Fix golangci-lint config by
    [@&#8203;SuperQ](https://togithub.com/SuperQ) in
    [https://github.com/prometheus/client_golang/pull/1536](https://togithub.com/prometheus/client_golang/pull/1536)
    - build(deps): bump github.com/prometheus/client_golang from 1.19.0 to
    1.19.1 in /tutorial/whatsup by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1529](https://togithub.com/prometheus/client_golang/pull/1529)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/client_golang/pull/1531](https://togithub.com/prometheus/client_golang/pull/1531)
    - Cleanup NOTICE file by [@&#8203;SuperQ](https://togithub.com/SuperQ)
    in
    [https://github.com/prometheus/client_golang/pull/1541](https://togithub.com/prometheus/client_golang/pull/1541)
    - Remove inlined upstream code by
    [@&#8203;SuperQ](https://togithub.com/SuperQ) in
    [https://github.com/prometheus/client_golang/pull/1539](https://togithub.com/prometheus/client_golang/pull/1539)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/client_golang/pull/1545](https://togithub.com/prometheus/client_golang/pull/1545)
    - client: Add Option to provide limit query param for APIs that support
    it by [@&#8203;abbyssoul](https://togithub.com/abbyssoul) in
    [https://github.com/prometheus/client_golang/pull/1544](https://togithub.com/prometheus/client_golang/pull/1544)
    - Allow creating constant histogram and summary metrics with a created
    timestamp by [@&#8203;swar8080](https://togithub.com/swar8080) in
    [https://github.com/prometheus/client_golang/pull/1537](https://togithub.com/prometheus/client_golang/pull/1537)
    - Update README.md by [@&#8203;bwplotka](https://togithub.com/bwplotka)
    in
    [https://github.com/prometheus/client_golang/pull/1556](https://togithub.com/prometheus/client_golang/pull/1556)
    - Temporarily remove required CI job for changelog. by
    [@&#8203;bwplotka](https://togithub.com/bwplotka) in
    [https://github.com/prometheus/client_golang/pull/1560](https://togithub.com/prometheus/client_golang/pull/1560)
    - build(deps): bump github.com/prometheus/common from 0.53.0 to 0.55.0
    in /tutorial/whatsup by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1549](https://togithub.com/prometheus/client_golang/pull/1549)
    - build(deps): bump golang.org/x/sys from 0.20.0 to 0.21.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1552](https://togithub.com/prometheus/client_golang/pull/1552)
    - build(deps): bump github.com/klauspost/compress from 1.17.8 to 1.17.9
    by [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1553](https://togithub.com/prometheus/client_golang/pull/1553)
    - fix: Update Go tests by [@&#8203;SuperQ](https://togithub.com/SuperQ)
    in
    [https://github.com/prometheus/client_golang/pull/1562](https://togithub.com/prometheus/client_golang/pull/1562)
    - process_collector: collect received/transmitted bytes by
    [@&#8203;huwcbjones](https://togithub.com/huwcbjones) in
    [https://github.com/prometheus/client_golang/pull/1555](https://togithub.com/prometheus/client_golang/pull/1555)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/client_golang/pull/1561](https://togithub.com/prometheus/client_golang/pull/1561)
    - chore: Remove half-implemented changelog automation by
    [@&#8203;ArthurSens](https://togithub.com/ArthurSens) in
    [https://github.com/prometheus/client_golang/pull/1564](https://togithub.com/prometheus/client_golang/pull/1564)
    - build(deps): bump the github-actions group across 1 directory with 3
    updates by [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1565](https://togithub.com/prometheus/client_golang/pull/1565)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/client_golang/pull/1563](https://togithub.com/prometheus/client_golang/pull/1563)
    - build(deps): bump google.golang.org/protobuf from 1.34.1 to 1.34.2 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1551](https://togithub.com/prometheus/client_golang/pull/1551)
    - deps: Updated to prometheus/common to 0.55 by
    [@&#8203;bwplotka](https://togithub.com/bwplotka) in
    [https://github.com/prometheus/client_golang/pull/1566](https://togithub.com/prometheus/client_golang/pull/1566)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/client_golang/pull/1567](https://togithub.com/prometheus/client_golang/pull/1567)
    - tutorials: Renamed tutorial -> tutorials for consistency + fixed
    tutorial code. by [@&#8203;bwplotka](https://togithub.com/bwplotka) in
    [https://github.com/prometheus/client_golang/pull/1569](https://togithub.com/prometheus/client_golang/pull/1569)
    - go collector: add default metrics acceptance tests; adding more
    context to HELP by [@&#8203;bwplotka](https://togithub.com/bwplotka) in
    [https://github.com/prometheus/client_golang/pull/1568](https://togithub.com/prometheus/client_golang/pull/1568)
    - build(deps): bump golang.org/x/sys from 0.21.0 to 0.22.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1570](https://togithub.com/prometheus/client_golang/pull/1570)
    - build(deps): bump the github-actions group with 3 updates by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/client_golang/pull/1571](https://togithub.com/prometheus/client_golang/pull/1571)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/client_golang/pull/1572](https://togithub.com/prometheus/client_golang/pull/1572)
    - ci: daggerize test and lint pipelines by
    [@&#8203;marcosnils](https://togithub.com/marcosnils) in
    [https://github.com/prometheus/client_golang/pull/1534](https://togithub.com/prometheus/client_golang/pull/1534)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/client_golang/pull/1573](https://togithub.com/prometheus/client_golang/pull/1573)
    - Add default Go runtime metrics for /gc/gogc:percent,
    /gc/gomemlimit:bytes, /sched/gomaxprocs:threads by
    [@&#8203;vesari](https://togithub.com/vesari) in
    [https://github.com/prometheus/client_golang/pull/1559](https://togithub.com/prometheus/client_golang/pull/1559)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/client_golang/pull/1576](https://togithub.com/prometheus/client_golang/pull/1576)
    - Remove go_memstat_lookups_total; added runtime/metrics calculation to
    memstat metric's help. by
    [@&#8203;bwplotka](https://togithub.com/bwplotka) in
    [https://github.com/prometheus/client_golang/pull/1577](https://togithub.com/prometheus/client_golang/pull/1577)
    - gocollector: Attach original runtime/metrics metric name to help. by
    [@&#8203;bwplotka](https://togithub.com/bwplotka) in
    [https://github.com/prometheus/client_golang/pull/1578](https://togithub.com/prometheus/client_golang/pull/1578)
    
    </details>
    
    #### New Contributors
    * @&#8203;foehammer127 made their first
    contributi[https://github.com/prometheus/client_golang/pull/1455](https://togithub.com/prometheus/client_golang/pull/1455)l/1455
    * @&#8203;SachinSahu431 made their first
    contributi[https://github.com/prometheus/client_golang/pull/1476](https://togithub.com/prometheus/client_golang/pull/1476)l/1476
    * @&#8203;igor-drozdov made their first
    contributi[https://github.com/prometheus/client_golang/pull/1480](https://togithub.com/prometheus/client_golang/pull/1480)l/1480
    * @&#8203;majolo made their first
    contributi[https://github.com/prometheus/client_golang/pull/1492](https://togithub.com/prometheus/client_golang/pull/1492)l/1492
    * @&#8203;oftenoccur made their first
    contributi[https://github.com/prometheus/client_golang/pull/1497](https://togithub.com/prometheus/client_golang/pull/1497)l/1497
    * @&#8203;dongjiang1989 made their first
    contributi[https://github.com/prometheus/client_golang/pull/1499](https://togithub.com/prometheus/client_golang/pull/1499)l/1499
    * @&#8203;lilijreey made their first
    contributi[https://github.com/prometheus/client_golang/pull/1511](https://togithub.com/prometheus/client_golang/pull/1511)l/1511
    * @&#8203;Ishani217 made their first
    contributi[https://github.com/prometheus/client_golang/pull/1444](https://togithub.com/prometheus/client_golang/pull/1444)l/1444
    * @&#8203;jcass8695 made their first
    contributi[https://github.com/prometheus/client_golang/pull/1503](https://togithub.com/prometheus/client_golang/pull/1503)l/1503
    * @&#8203;leonnicolas made their first
    contributi[https://github.com/prometheus/client_golang/pull/1424](https://togithub.com/prometheus/client_golang/pull/1424)l/1424
    * @&#8203;fatsheep9146 made their first
    contributi[https://github.com/prometheus/client_golang/pull/1471](https://togithub.com/prometheus/client_golang/pull/1471)l/1471
    * @&#8203;abbyssoul made their first
    contributi[https://github.com/prometheus/client_golang/pull/1544](https://togithub.com/prometheus/client_golang/pull/1544)l/1544
    * @&#8203;swar8080 made their first
    contributi[https://github.com/prometheus/client_golang/pull/1537](https://togithub.com/prometheus/client_golang/pull/1537)l/1537
    * @&#8203;huwcbjones made their first
    contributi[https://github.com/prometheus/client_golang/pull/1555](https://togithub.com/prometheus/client_golang/pull/1555)l/1555
    * @&#8203;marcosnils made their first
    contributi[https://github.com/prometheus/client_golang/pull/1534](https://togithub.com/prometheus/client_golang/pull/1534)l/1534
    * @&#8203;vesari made their first
    contributi[https://github.com/prometheus/client_golang/pull/1559](https://togithub.com/prometheus/client_golang/pull/1559)l/1559
    
    **Full Changelog**:
    https://github.com/prometheus/client_golang/compare/v1.19.1...v1.20.0
    
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
    
    This PR was generated by [Mend
    Renovate](https://www.mend.io/free-developer-tools/renovate/). View the
    [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOC4yNi4xIiwidXBkYXRlZEluVmVyIjoiMzguMjYuMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
