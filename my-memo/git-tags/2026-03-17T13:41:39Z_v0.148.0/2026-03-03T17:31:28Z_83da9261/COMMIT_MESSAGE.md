commit 83da9261487f2f5d112a25630f87c27dd9c1afb7
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Mar 3 17:31:28 2026 +0000

    Update All go.opentelemetry.io/collector packages (#14684)
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    |
    [go.opentelemetry.io/collector/confmap/provider/fileprovider](https://redirect.github.com/open-telemetry/opentelemetry-collector)
    | `v1.52.0` → `v1.53.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2ffileprovider/v1.53.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fconfmap%2fprovider%2ffileprovider/v1.52.0/v1.53.0?slim=true)
    |
    |
    [go.opentelemetry.io/collector/filter](https://redirect.github.com/open-telemetry/opentelemetry-collector)
    | `v0.146.1` → `v0.147.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2ffilter/v0.147.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2ffilter/v0.146.1/v0.147.0?slim=true)
    |
    |
    [go.opentelemetry.io/collector/scraper/scrapertest](https://redirect.github.com/open-telemetry/opentelemetry-collector)
    | `v0.146.1` → `v0.147.0` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fscraper%2fscrapertest/v0.147.0?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fscraper%2fscrapertest/v0.146.1/v0.147.0?slim=true)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the [Dependency
    Dashboard](../issues/8903) for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-collector
    (go.opentelemetry.io/collector/confmap/provider/fileprovider)</summary>
    
    ###
    [`v1.53.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1530v01470)
    
    ##### 💡 Enhancements 💡
    
    - `exporter/debug`: Output bucket counts for exponential histogram data
    points in normal verbosity.
    ([#&#8203;10463](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10463))
    - `pkg/exporterhelper`: Add `metadata_keys` configuration to
    `sending_queue.batch.partition` to partition batches by client metadata
    ([#&#8203;14139](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14139))
    The `metadata_keys` configuration option is now available in the
    `sending_queue.batch.partition` section for all exporters.
    When specified, batches are partitioned based on the values of the
    listed metadata keys, allowing separate batching per metadata partition.
    This feature
      is automatically configured when using `exporterhelper.WithQueue()`.
    
    ##### 🧰 Bug fixes 🧰
    
    - `cmd/builder`: Fix duplicate error output when CLI command execution
    fails in the builder tool.
    ([#&#8203;14436](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14436))
    
    - `cmd/mdatagen`: Fix duplicate error output when CLI command execution
    fails in the mdatagen tool.
    ([#&#8203;14436](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14436))
    
    - `cmd/mdatagen`: Fix semconv URL validation for metrics with
    underscores in their names
    ([#&#8203;14583](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14583))
    Metrics like `system.disk.io_time` now correctly validate against
    semantic convention URLs containing underscores in the anchor tag.
    
    - `extension/memory_limiter`: Use ChainUnaryInterceptor instead of
    UnaryInterceptor to allow multiple interceptors.
    ([#&#8203;14634](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14634))
    If multiple extensions that use the UnaryInterceptor are set the binary
    panics at start time.
    
    - `extension/memory_limiter`: Add support for streaming services.
    ([#&#8203;14634](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14634))
    
    - `pkg/config/configmiddleware`: Add context.Context to HTTP middleware
    interface constructors.
    ([#&#8203;14523](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14523))
    This is a breaking API change for components that implement or use
    extensionmiddleware.
    
    - `pkg/confmap`: Fix another issue where configs could fail to decode
    when using interpolated values in string fields.
    ([#&#8203;14034](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14034))
    For example, a resource attribute can be set via an environment variable
    to a string that is parseable as a number, e.g. `1234`.
    
    (A similar bug was fixed in a previous release: that one was triggered
    when the field was nested in a struct,
    whereas this one is triggered when the field internally has type
    "pointer to string" rather than "string".)
    
    - `pkg/otelcol`: The featuregate subcommand now rejects extra positional
    arguments instead of silently ignoring them.
    ([#&#8203;14554](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14554))
    
    - `pkg/queuebatch`: Fix data race in partition\_batcher where
    resetTimer() was called outside mutex, causing concurrent timer.Reset()
    calls and unpredictable batch flush timing under load.
    ([#&#8203;14491](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14491))
    
    - `pkg/scraperhelper`: Log scrapers now emit log-appropriate receiver
    telemetry
    ([#&#8203;14654](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14654))
    Log scrapers previously emitted the same receiver telemetry as metric
    scrapers,
    such as the otelcol\_receiver\_accepted\_metric\_points metric (instead
    of otelcol\_receiver\_accepted\_log\_records),
    or spans named receiver/myreceiver/MetricsReceived (instead of
    receiver/myreceiver/LogsReceived).
    
      This did not affect scraper-specific spans and metrics.
    
    - `processor/batch`: Fixes a bug where the batch processor would not
    copy `SchemaUrl` metadata from resource and scope containers during
    partial batch splits.
    ([#&#8203;12279](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12279),
    [#&#8203;14620](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14620))
    
    <!-- previous-version -->
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    👻 **Immortal**: This PR will be recreated if closed unmerged. Get
    [config
    help](https://redirect.github.com/renovatebot/renovate/discussions) if
    that's undesired.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0My40OC4xIiwidXBkYXRlZEluVmVyIjoiNDMuNDguMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
