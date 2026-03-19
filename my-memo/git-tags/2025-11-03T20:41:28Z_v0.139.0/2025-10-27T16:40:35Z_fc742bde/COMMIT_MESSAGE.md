commit fc742bdeda0f93c1236d4d14a1839aaecaeb7214
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Mon Oct 27 16:40:35 2025 +0000

    fix(deps): update module go.opentelemetry.io/collector/component to v0.120.0 (#14085)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Confidence |
    |---|---|---|---|
    |
    [go.opentelemetry.io/collector/component](https://redirect.github.com/open-telemetry/opentelemetry-collector)
    | `v0.0.0-00010101000000-000000000000` -> `v0.120.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fcomponent/v0.120.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fcomponent/v0.0.0-00010101000000-000000000000/v0.120.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    # Warnings (1)
    
    Please correct - or verify that you can safely ignore - these warnings
    before you merge this PR.
    
    - `go.opentelemetry.io/collector/component`: Could not determine new
    digest for update (go package go.opentelemetry.io/collector/component)
    
    ---
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-collector
    (go.opentelemetry.io/collector/component)</summary>
    
    ###
    [`v0.120.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1260v01200)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.119.0...v0.120.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `all`: Added support for go1.24, bumped minimum version to 1.23
    ([#&#8203;12370](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12370))
    - `mdatagen`: Removing deprecated generated funcs and a few test funcs
    as well.
    ([#&#8203;12304](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12304))
    - `service`: Align component logger attributes with those defined in RFC
    ([#&#8203;12217](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12217))
    See [Pipeline Component Telemetry
    RFC](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/main/docs/rfcs/component-universal-telemetry.md#attributes)
    
    ##### 💡 Enhancements 💡
    
    - `otlpreceiver`: Update stability for logs
    ([#&#8203;12335](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12335))
    - `exporterhelper`: Implement sync disabled queue used when batching is
    enabled.
    ([#&#8203;12245](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12245))
    - `exporterhelper`: Enable the new pull-based batcher in exporterhelper
    ([#&#8203;12291](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12291))
    - `exporterhelper`: Update queue size after the element is done exported
    ([#&#8203;12399](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12399))
    After this change the active queue size will include elements in the
    process of being exported.
    - `otelcol`: Add featuregate command to display information about
    available features
    ([#&#8203;11998](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11998))
    The featuregate command allows users to view detailed information about
    feature gates
      including their status, stage, and description.
    
    ##### 🧰 Bug fixes 🧰
    
    - `memorylimiter`: Logger no longer attributes to single signal,
    pipeline, or component.
    ([#&#8203;12217](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12217))
    - `otlpreceiver`: Logger no longer attributes to random signal when
    receiving multiple signals.
    ([#&#8203;12217](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12217))
    - `exporterhelper`: Fix undefined behavior access to request after send
    to next component. This causes random memory access.
    ([#&#8203;12281](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12281))
    - `exporterhelper`: Fix default batcher to correctly call all done
    callbacks exactly once
    ([#&#8203;12247](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12247))
    - `otlpreceiver`: Fix OTLP http receiver to correctly set Retry-After
    ([#&#8203;12367](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12367))
    - `otlphttpexporter`: Fix parsing logic for Retry-After in OTLP http
    protocol.
    ([#&#8203;12366](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12366))
    The value of Retry-After field can be either an HTTP-date or
    delay-seconds and the current logic only parsed delay-seconds.
    - `cmd/builder`: Ensure unique aliases for modules with same suffix
    ([#&#8203;12201](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12201))
    
    ###
    [`v0.119.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1250v01190)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.118.0...v0.119.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `exporterhelper`: Rename exporter span signal specific attributes
    (e.g. "sent\_spans" / "send\_failed\_span") to "items.sent" /
    "items.failed".
    ([#&#8203;12165](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12165))
    - `cmd/mdatagen`: Remove dead field `telemetry::level`
    ([#&#8203;12144](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12144))
    - `exporterhelper`: Change exporter ID to be a Span level attribute
    instead on each event.
    ([#&#8203;12164](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12164))
    This does not have an impact on the level of information emitted, but on
    the structure of the Span.
    - `cmd/mdatagen`: Remove `level` field from metrics definition
    ([#&#8203;12145](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12145))
    This mechanism will be added back once a new views mechanism is
    implemented.
    - `service`: Value for telemetry exporter `otlp.protocol` updated from
    `grpc/protobuf` to `grpc`.
    ([#&#8203;12337](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12337))
    - `service`: internal metrics exported over Prometheus may differ from
    previous versions.
    ([#&#8203;11611](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11611))
    
    Users who do not customize the Prometheus reader should not be impacted.
    The change to update the internal telemetry to use [otel-go
    config](https://pkg.go.dev/go.opentelemetry.io/contrib/config) can cause
    unexpected behaviour
    for end users. This change is caused by the default values in `config`
    being different from what the Collector has used in previous versions.
    The
    following changes can occur when users configure their
    `service::telemetry::metrics::readers`:
    
    - the metric name will append a `_total` suffix if `without_type_suffix`
    is not configured. Set `without_type_suffix` to `true` to disable this.
    - units will be appended to metric name if `without_units` is not
    configured. Set `without_units` to `true` to disable this.
    - a `target_info` metric will be emitted if `without_scope_info` is not
    configured. Set `without_scope_info` to `true` to disable this.
    
    ##### 💡 Enhancements 💡
    
    - `configtls`: Allow users to mention their preferred curve types for
    ECDHE handshake
    ([#&#8203;12174](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12174))
    - `service`: remove custom code and instead use config package to
    instantiate meter provider.
    ([#&#8203;11611](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11611))
    - `otelcol`: Adds support for listing config providers in components
    command's output
    ([#&#8203;11570](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11570))
    - `general`: Reduce memory allocations when loading configuration and
    parsing component names
    ([#&#8203;11964](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11964))
    
    ##### 🧰 Bug fixes 🧰
    
    - `exporterhelper`: Fix bug that the exporter with new batcher may have
    been marked as non mutation.
    ([#&#8203;12239](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12239))
    Only affects users that manually turned on
    `exporter.UsePullingBasedExporterQueueBatcher` featuregate.
    
    - `service`: Preserve URL normalization logic that was present before.
    ([#&#8203;12254](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12254))
    
    - `confighttp`: confighttp.ToServer now sets ErrorLog with a default
    logger backed by Zap
    ([#&#8203;11820](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11820))
    
    This change ensures that the http.Server's ErrorLog is correctly set
    using Zap's logger at the error level, addressing the issue of error
    logs being printed using a different logger.
    
    - `exporterhelper`: Fix context propagation for DisabledBatcher
    ([#&#8203;12231](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12231))
    
    - `mdatagen`: apply fieldalignment to generated code
    ([#&#8203;12125](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12125))
    
    - `mdatagen`: Fix bug where Histograms were marked as not supporting
    temporal aggregation
    ([#&#8203;12168](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12168))
    
    - `exporterhelper`: Fix MergeSplit issue that ignores the initial
    message size.
    ([#&#8203;12257](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12257))
    
    - `service`: Include validation errors from telemetry.Config when
    validating the service config
    ([#&#8203;12100](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12100))
      Previously validation errors were only printed to the console
    
    - `service-telemetry`: pass the missing async error channel into service
    telemetry settings
    ([#&#8203;11417](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11417))
    
    ###
    [`v0.118.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1240v01180)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.117.0...v0.118.0)
    
    ##### 💡 Enhancements 💡
    
    - `exporterhelper`: Add blocking option to control queue behavior when
    full
    ([#&#8203;12090](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12090))
    - `debugexporter`: Add EventName to debug exporter for Logs. EventName
    was added as top-level field in the LogRecord from 1.5.0 of proto
    definition.
    ([#&#8203;11966](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11966))
    - `confighttp`: Added support for configuring compression levels.
    ([#&#8203;10467](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10467))
    A new configuration option called CompressionParams has been added to
    confighttp. | This allows users to configure the compression levels for
    the confighttp client.
    - `exporterhelper`: Change the memory queue implementation to not
    pre-allocate capacity objects.
    ([#&#8203;12070](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12070))
    This change improves memory usage of the collector under low utilization
    and is a prerequisite for supporting different other size limitations
    (number of items, bytes).
    
    ##### 🧰 Bug fixes 🧰
    
    - `mdatagen`: apply fieldalignment to generated code
    ([#&#8203;12121](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12121))
    - `otelcoltest`: Set `DefaultScheme` to `env` in the test
    `ConfigProvider` to replicate the default provider used by the
    Collector.
    ([#&#8203;12066](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12066))
    
    ###
    [`v0.117.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1230v01170)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.116.0...v0.117.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `otelcol`: Remove warnings when 0.0.0.0 is used
    ([#&#8203;11713](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11713),
    [#&#8203;8510](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/8510))
    
    ##### 🧰 Bug fixes 🧰
    
    - `internal/sharedcomponent`: Fixed bug where sharedcomponent would use
    too much memory remembering all the previously reported statuses
    ([#&#8203;11826](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11826))
    
    ###
    [`v0.116.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1220v01160)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.115.0...v0.116.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `pdata/pprofile`: Remove deprecated `Profile.EndTime` and
    `Profile.SetEndTime` methods.
    ([#&#8203;11796](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11796))
    
    ##### 💡 Enhancements 💡
    
    - `xconfighttp`: Add WithOtelHTTPOptions to experimental module
    xconfighttp
    ([#&#8203;11770](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11770))
    
    ##### 🧰 Bug fixes 🧰
    
    - `exporterhelper`: Fix memory leak at exporter shutdown
    ([#&#8203;11401](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11401))
    - `sharedcomponent`: Remove race-condition and cleanup locking
    ([#&#8203;11819](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11819))
    
    ###
    [`v0.115.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1210v01150)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.114.0...v0.115.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `otelcol`: Change all logged timestamps to ISO8601.
    ([#&#8203;10543](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10543))
    This makes log timestamps human-readable (as opposed to epoch seconds in
    scientific notation), but may break users trying to parse logged lines
    in the
      old format.
    - `pdata/pprofile`: Upgrade pdata to opentelemetry-proto v1.4.0
    ([#&#8203;11722](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11722))
    
    ##### 🚩 Deprecations 🚩
    
    - `scraperhelper`: Deprecate all Scraper helpers in scraperhelper
    ([#&#8203;11732](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11732))
    Deprecate ScrapeFunc, ScraperOption, WithStart, WithShutdown in favor of
    equivalent funcs in scraper package.
    
    ##### 💡 Enhancements 💡
    
    - `exporterqueue`: Introduce a feature gate
    exporter.UsePullingBasedExporterQueueBatcher to use the new pulling
    model in exporter queue batching.
    ([#&#8203;8122](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/8122),
    [#&#8203;10368](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10368))
    If both queuing and batching is enabled for exporter, we now use a
    pulling model instead of a
    pushing model. num\_consumer in queue configuration is now used to
    specify the maximum number of
      concurrent workers that are sending out the request.
    
    - `service`: label metrics as alpha to communicate their stability
    ([#&#8203;11729](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11729))
    
    - `consumer`: Mark consumer as stable.
    ([#&#8203;9046](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9046))
    
    - `service`: Add support for ca certificates in telemetry metrics otlp
    grpc exporter
    ([#&#8203;11633](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11633))
    Before this change the Certificate value in config was silently ignored.
    
    ##### 🧰 Bug fixes 🧰
    
    - `service`: ensure OTLP emitted logs respect severity
    ([#&#8203;11718](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11718))
    - `featuregate`: Fix an unfriendly display message `runtime error` when
    featuregate is used to display command line usage.
    ([#&#8203;11651](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11651))
    - `profiles`: Fix iteration over scope profiles while counting the
    samples.
    ([#&#8203;11688](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11688))
    
    ###
    [`v0.114.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1200v01140)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.113.0...v0.114.0)
    
    ##### 💡 Enhancements 💡
    
    - `cmd/builder`: Allow for replacing of local Providers and Converters
    when building custom collector with ocb.
    ([#&#8203;11649](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11649))
    Use the property `path` under `gomod` to replace an go module with a
    local folder in
      builder-config.yaml. Ex:
      ```
      providers:
        - gomod: module.url/my/custom/provider v1.2.3
          path: /path/to/local/provider
      ```
    
    - `cmd/builder`: Allow configuring `confmap.Converter` components in
    ocb.
    ([#&#8203;11582](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11582))
      If no converters are specified, there will be no converters added.
      Currently, the only published converter is `expandconverter` which is
    deprecated as of v0.107.0, but can still be added for testing purposes.
    
    To configure a custom converter, make sure your converter implements the
    converter
    interface and is published as a go module (or replaced locally if not
    published).
    You may then use the `converters` key in your OCB build manifest with a
    list of
      Go modules (and replaces as necessary) to include your converter.
    
    Please note that converters are order-dependent. The confmap will apply
    converters
    in order of which they are listed in your manifest if there is more than
    one.
    
    - `all`: shorten time period before removing an unmaintained component
    from 6 months to 3 months
    ([#&#8203;11664](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11664))
    
    ##### 🧰 Bug fixes 🧰
    
    - `all`: Updates dialer timeout section documentation in confignet
    README
    ([#&#8203;11685](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11685))
    - `scraperhelper`: If the scraper shuts down, do not scrape first.
    ([#&#8203;11632](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11632))
    When the scraper is shutting down, it currently will scrape at least
    once.
    With this change, upon receiving a shutdown order, the receiver's
    scraperhelper will exit immediately.
    
    ###
    [`v0.113.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1190v01130)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.112.0...v0.113.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `internal/fanoutconsumer`: Extract internal/fanoutconsumer as a
    separate go module
    ([#&#8203;11441](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11441))
    - `builder`: Remove builder support to build old version, and the
    otelcol\_version config
    ([#&#8203;11405](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11405))
    User should remove this property from their config, to build older
    versions use older builders.
    - `receiver`: Make receivertest into its own module
    ([#&#8203;11462](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11462))
    - `builder`: Remove deprecated flags from Builder
    ([#&#8203;11576](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11576))
    Here is the list of flags | --name, --description, --version,
    --otelcol-version, --go, --module
    - `internal/sharedcomponent`: Extract internal/sharedcomponent as a
    separate go module
    ([#&#8203;11442](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11442))
    
    ##### 💡 Enhancements 💡
    
    - `mdatagen`: Add otlp as supported distribution
    ([#&#8203;11527](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11527))
    - `batchprocessor`: Move single shard batcher creation to the
    constructor
    ([#&#8203;11594](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11594))
    - `service`: add support for using the otelzap bridge and emit logs
    using the OTel Go SDK
    ([#&#8203;10544](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10544))
    
    ##### 🧰 Bug fixes 🧰
    
    - `service`: ensure traces and logs emitted by the otel go SDK use the
    same resource information
    ([#&#8203;11578](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11578))
    - `config/configgrpc`: Patch for bug in the grpc-go NewClient that makes
    the way the hostname is resolved incompatible with the way proxy setting
    are applied.
    ([#&#8203;11537](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11537))
    - `builder`: Update builder default providers to latest stable releases
    ([#&#8203;11566](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11566))
    
    ###
    [`v0.112.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1180v01120)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.111.0...v0.112.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `consumer/consumererror`: Extract consumer/consumererror as a separate
    go module
    ([#&#8203;11440](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11440))
    - `exporter/exportertest`: Put exportertest into its own module
    ([#&#8203;11461](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11461))
    - `service`: Remove stable gate component.UseLocalHostAsDefaultHost
    ([#&#8203;11412](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11412))
    
    ##### 🚩 Deprecations 🚩
    
    - `processortest`: Deprecated 'NewUnhealthyProcessorCreateSettings'. Use
    NewNopSettings instead.
    ([#&#8203;11307](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11307))
    
    ##### 💡 Enhancements 💡
    
    - `mdatagen`: Added generated\_package\_name config field to support
    custom generated package name.
    ([#&#8203;11231](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11231))
    - `mdatagen`: Generate documentation for components with resource
    attributes only
    ([#&#8203;10705](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10705))
    - `confighttp`: Adding support for lz4 compression into the project
    ([#&#8203;9128](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9128))
    - `service`: Hide profiles support behind a feature gate while it
    remains alpha.
    ([#&#8203;11477](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11477))
    - `exporterhelper`: Retry sender will fail fast when the context timeout
    is shorter than the next retry interval.
    ([#&#8203;11183](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11183))
    
    ##### 🧰 Bug fixes 🧰
    
    - `cmd/builder`: Fix default configuration for builder for httpprovider,
    httpsprovider, and yamlprovider.
    ([#&#8203;11357](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11357))
    - `processorhelper`: Fix issue where in/out parameters were not recorded
    when error was returned from consumer.
    ([#&#8203;11351](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11351))
    
    ###
    [`v0.111.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1170v01110)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.110.0...v0.111.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `service/telemetry`: Change default metrics address to
    "localhost:8888" instead of ":8888"
    ([#&#8203;11251](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11251))
    This behavior can be disabled by disabling the feature gate
    'telemetry.UseLocalHostAsDefaultMetricsAddress'.
    - `loggingexporter`: Removed the deprecated logging exporter. Use the
    debug exporter instead.
    ([#&#8203;11037](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11037))
    
    ##### 🚩 Deprecations 🚩
    
    - `service/telemetry`: Deprecate service::telemetry::metrics::address in
    favor of service::telemetry::metrics::readers.
    ([#&#8203;11205](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11205))
    - `processorhelper`: Deprecate BuildProcessorMetricName as it's no
    longer needed since introduction of mdatagen
    ([#&#8203;11302](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11302))
    
    ##### 💡 Enhancements 💡
    
    - `ocb`: create docker images for OCB, per
    [open-telemetry/opentelemetry-collector-releases#671](https://redirect.github.com/open-telemetry/opentelemetry-collector-releases/pull/671)
    ([#&#8203;5712](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/5712))
    Adds standard Docker images for OCB to Dockerhub and GitHub, see
    hub.docker.com/r/otel/opentelemetry-collector-builder
    - `confighttp`: Snappy compression to lazy read for memory efficiency
    ([#&#8203;11177](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11177))
    - `httpsprovider`: Mark the httpsprovider as stable.
    ([#&#8203;11191](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11191))
    - `httpprovider`: Mark the httpprovider as stable.
    ([#&#8203;11191](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11191))
    - `yamlprovider`: Mark the yamlprovider as stable.
    ([#&#8203;11192](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11192))
    - `confmap`: Allow using any YAML structure as a string when loading
    configuration including time.Time formats
    ([#&#8203;10659](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10659))
    Previously, fields with time.Time formats could not be used as strings
    in configurations
    
    ##### 🧰 Bug fixes 🧰
    
    - `processorhelper`: Fix data race condition, concurrent writes to the
    err variable, causes UB (Undefined Behavior)
    ([#&#8203;11350](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11350))
    - `cmd/builder`: re-adds function to properly set and view version
    number of OpenTelemetry Collector Builder (ocb) binaries
    ([#&#8203;11208](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11208))
    - `pdata`: Unmarshal Span and SpanLink flags from JSON
    ([#&#8203;11267](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11267))
    
    ###
    [`v0.110.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1160v01100)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.109.0...v0.110.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `processorhelper`: Update incoming/outgoing metrics to a single metric
    with a `otel.signal` attributes.
    ([#&#8203;11144](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11144))
      The following metrics were added in the previous version
    
      - otelcol\_processor\_incoming\_spans
      - otelcol\_processor\_outgoing\_spans
      - otelcol\_processor\_incoming\_metric\_points
      - otelcol\_processor\_outgoing\_metric\_points
      - otelcol\_processor\_incoming\_log\_records
      - otelcol\_processor\_outgoing\_log\_records
    
    They are being replaced with the following to more closely align with
    OTEP 259:
    
      - otelcol\_processor\_incoming\_items
      - otelcol\_processor\_outgoing\_items
    
    - `processorhelper`: Remove deprecated `[Traces|Metrics|Logs]`Inserted
    funcs
    ([#&#8203;11151](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11151))
    
    - `config`: Mark UseLocalHostAsDefaultHostfeatureGate as stable
    ([#&#8203;11235](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11235))
    
    ##### 🚩 Deprecations 🚩
    
    - `processorhelper`: deprecate accepted/refused/dropped metrics
    ([#&#8203;11201](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11201))
    The following metrics are being deprecated as they were only used in a
    single
      processor:
      - `otelcol_processor_accepted_log_records`
      - `otelcol_processor_accepted_metric_points`
      - `otelcol_processor_accepted_spans`
      - `otelcol_processor_dropped_log_records`
      - `otelcol_processor_dropped_metric_points`
      - `otelcol_processor_dropped_spans`
      - `otelcol_processor_refused_log_records`
      - `otelcol_processor_refused_metric_points`
      - `otelcol_processor_refused_spans`
    
    ##### 💡 Enhancements 💡
    
    - `pdata`: Add support to MoveTo for Map, allow avoiding copies
    ([#&#8203;11175](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11175))
    - `mdatagen`: Add stability field to telemetry metrics, allowing the
    generated description to include a stability string.
    ([#&#8203;11160](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11160))
    - `confignet`: Mark module as Stable.
    ([#&#8203;9801](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9801))
    - `confmap/provider/envprovider`: Support default values when env var is
    empty
    ([#&#8203;5228](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/5228))
    - `mdatagen`: mdatagen `validateMetrics()` support validate metrics in
    `telemetry.metric`
    ([#&#8203;10925](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10925))
    - `service/telemetry`: Mark
    useOtelWithSDKConfigurationForInternalTelemetry as stable
    ([#&#8203;7532](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/7532))
    - `mdatagen`: Use cobra for the command, add version flag
    ([#&#8203;11196](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11196))
    
    ##### 🧰 Bug fixes 🧰
    
    - `service`: Ensure process telemetry is registered when internal
    telemetry is configured with readers instead of an address.
    ([#&#8203;11093](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11093))
    
    - `mdatagen`: Fix incorrect generation of metric tests with boolean
    attributes.
    ([#&#8203;11169](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11169))
    
    - `otelcol`: Fix the Windows Event Log configuration when running the
    Collector as a Windows service.
    ([#&#8203;5297](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/5297),
    [#&#8203;11051](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11051))
    
    - `builder`: Honor build\_tags in config
    ([#&#8203;11156](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11156))
    
    - `builder`: Fix version for providers in the default config
    ([#&#8203;11123](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11123))
    
    - `cmd/builder`: Temporarily disable strict versioning checks
    ([#&#8203;11129](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11129),
    [#&#8203;11152](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11152))
    The strict versioning check may be enabled by default in a future
    version once all configuration providers are stabilized.
    
    - `confmap`: Fix loading config of a component from a different source.
    ([#&#8203;11154](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11154))
    This issue only affected loading the whole component config, loading
    parts of a component config from a different source was working
    correctly.
    
    ###
    [`v0.109.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1150v01090)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.108.1...v0.109.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `scraperhelper`: Remove deprecated `ObsReport`, `ObsReportSettings`,
    `NewObsReport` types/funcs
    ([#&#8203;11086](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11086))
    - `confmap`: Remove stable `confmap.strictlyTypedInput` gate
    ([#&#8203;11008](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11008))
    - `confmap`: Removes stable `confmap.unifyEnvVarExpansion` feature gate.
    ([#&#8203;11007](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11007))
    - `ballastextension`: Removes the deprecated ballastextension
    ([#&#8203;10671](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10671))
    - `service`: Removes stable `service.disableOpenCensusBridge` feature
    gate
    ([#&#8203;11009](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11009))
    
    ##### 🚩 Deprecations 🚩
    
    - `processorhelper`: These funcs are not used anywhere, marking them
    deprecated.
    ([#&#8203;11083](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11083))
    
    ##### 🚀 New components 🚀
    
    - `extension/experimental/storage`: Move
    `extension/experimental/storage` into a separate module
    ([#&#8203;11022](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11022))
    
    ##### 💡 Enhancements 💡
    
    - `configtelemetry`: Add guidelines for each level of component
    telemetry
    ([#&#8203;10286](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10286))
    
    - `service`: move `useOtelWithSDKConfigurationForInternalTelemetry` gate
    to beta
    ([#&#8203;11091](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11091))
    
    - `service`: implement a no-op tracer provider that doesn't propagate
    the context
    ([#&#8203;11026](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11026))
    The no-op tracer provider supported by the SDK incurs a memory cost of
    propagating the context no matter
    what. This is not needed if tracing is not enabled in the Collector.
    This implementation of the no-op tracer
      provider removes the need to allocate memory when tracing is disabled.
    
    - `envprovider`: Mark module as stable
    ([#&#8203;10982](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10982))
    
    - `fileprovider`: Mark module as stable
    ([#&#8203;10983](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10983))
    
    - `processor`: Add incoming and outgoing counts for processors using
    processorhelper.
    ([#&#8203;10910](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10910))
    Any processor using the processorhelper package (this is most
    processors) will automatically report
      incoming and outgoing item counts. The new metrics are:
      - otelcol\_processor\_incoming\_spans
      - otelcol\_processor\_outgoing\_spans
      - otelcol\_processor\_incoming\_metric\_points
      - otelcol\_processor\_outgoing\_metric\_points
      - otelcol\_processor\_incoming\_log\_records
      - otelcol\_processor\_outgoing\_log\_records
    
    ##### 🧰 Bug fixes 🧰
    
    - `configgrpc`: Change the value of max\_recv\_msg\_size\_mib from
    uint64 to int to avoid a case where misconfiguration caused an integer
    overflow.
    ([#&#8203;10948](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10948))
    - `exporterqueue`: Fix a bug in persistent queue that Offer can becomes
    deadlocked when queue is almost full
    ([#&#8203;11015](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11015))
    
    ###
    [`v0.108.1`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1141v01081)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.108.0...v0.108.1)
    
    ##### 🧰 Bug fixes 🧰
    
    - `mdatagen`: Fix a missing import in the generated test file
    ([#&#8203;10969](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10969))
    
    ###
    [`v0.108.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1140v01080)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.107.0...v0.108.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `all`: Added support for go1.23, bumped the minimum version to 1.22
    ([#&#8203;10869](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10869))
    - `otelcol`: Remove deprecated `ConfmapProvider` interface.
    ([#&#8203;10934](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10934))
    - `confmap`: Mark `confmap.strictlyTypedInput` as stable
    ([#&#8203;10552](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10552))
    
    ##### 💡 Enhancements 💡
    
    - `exporter/otlp`: Add batching option to otlp exporter
    ([#&#8203;8122](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/8122))
    - `builder`: Add a --skip-new-go-module flag to skip creating a module
    in the output directory.
    ([#&#8203;9252](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9252))
    - `component`: Add `TelemetrySettings.LeveledMeterProvider` func to
    replace MetricsLevel in the near future
    ([#&#8203;10931](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10931))
    - `mdatagen`: Add `LeveledMeter` method to mdatagen
    ([#&#8203;10933](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10933))
    - `service`: Adds `level` configuration option to
    `service::telemetry::trace` to allow users to disable the default
    TracerProvider
    ([#&#8203;10892](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10892))
    This replaces the feature gate `service.noopTracerProvider` introduced
    in v0.107.0
    - `componentstatus`: Add new Reporter interface to define how to report
    a status via a `component.Host` implementation
    ([#&#8203;10852](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10852))
    - `mdatagen`: support using a different github project in mdatagen
    README issues list
    ([#&#8203;10484](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10484))
    - `mdatagen`: Updates mdatagen's usage to output a complete command line
    example, including the metadata.yaml file.
    ([#&#8203;10886](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10886))
    - `extension`: Add ModuleInfo to extension.Settings to allow extensions
    to access component go module information.
    ([#&#8203;10876](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10876))
    - `confmap`: Mark module as stable
    ([#&#8203;9379](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9379))
    
    ##### 🧰 Bug fixes 🧰
    
    - `batchprocessor`: Update units for internal telemetry
    ([#&#8203;10652](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10652))
    - `confmap`: Fix bug where an unset env var used with a non-string field
    resulted in a panic
    ([#&#8203;10950](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10950))
    - `service`: Fix memory leaks during service package shutdown
    ([#&#8203;9165](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9165))
    - `mdatagen`: Update generated telemetry template to only include
    context import when there are async metrics.
    ([#&#8203;10883](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10883))
    - `mdatagen`: Fixed bug in which setting `SkipLifecycle` &
    `SkipShutdown` to true would result in a generated file with an unused
    import `confmaptest`
    ([#&#8203;10866](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10866))
    - `confmap`: Use string representation for field types where all
    primitive types are strings.
    ([#&#8203;10937](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10937))
    - `otelcol`: Preserve internal representation when unmarshaling
    component configs
    ([#&#8203;10552](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10552))
    
    ###
    [`v0.107.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1130v01070)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.106.1...v0.107.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `service`: Remove OpenCensus bridge completely, mark feature gate as
    stable.
    ([#&#8203;10414](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10414))
    - `confmap`: Set the `confmap.unifyEnvVarExpansion` feature gate to
    Stable. Expansion of `$FOO` env vars is no longer supported. Use
    `${FOO}` or `${env:FOO}` instead.
    ([#&#8203;10508](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10508))
    - `service`: Remove `otelcol` from Prometheus configuration. This means
    that any metric that isn't explicitly prefixed with `otelcol_` no longer
    have that prefix.
    ([#&#8203;9759](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9759))
    
    ##### 💡 Enhancements 💡
    
    - `mdatagen`: export ScopeName in internal/metadata package
    ([#&#8203;10845](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10845))
    This can be used by components that need to set their scope name
    manually. Will save component owners from having to store a variable,
    which may diverge from the scope name used by the component for emitting
    its own telemetry.
    
    - `semconv`: Add v1.26.0 semantic conventions package
    ([#&#8203;10249](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10249),
    [#&#8203;10829](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10829))
    
    - `mdatagen`: Expose a setting on tests::host to set up your own host
    initialization code
    ([#&#8203;10765](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10765))
    Some receivers require a host that has additional capabilities such as
    exposing exporters.
    For those, we can expose a setting that allows them to place a different
    host in the generated code.
    
    - `confmap`: Allow using any YAML structure as a string when loading
    configuration.
    ([#&#8203;10800](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10800))
    Previous to this change, slices could not be used as strings in
    configuration.
    
    - `ocb`: migrate build and release of ocb binaries to
    opentelemetry-collector-releases repository
    ([#&#8203;10710](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10710))
    ocb binaries will now be released under
    open-telemetry/opentelemetry-collector-releases tagged as
    "cmd/builder/vX.XXX.X"
    
    - `semconv`: Add semantic conventions version v1.27.0
    ([#&#8203;10837](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10837))
    
    - `client`: Mark module as stable.
    ([#&#8203;10775](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10775))
    
    ##### 🧰 Bug fixes 🧰
    
    - `configtelemetry`: Add 10s read header timeout on the configtelemetry
    Prometheus HTTP server.
    ([#&#8203;5699](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/5699))
    
    - `service`: Allow users to disable the tracer provider via the feature
    gate `service.noopTracerProvider`
    ([#&#8203;10858](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10858))
    The service is returning an instance of a SDK tracer provider regardless
    of whether there were any processors configured causing resources to be
    consumed unnecessarily.
    
    - `processorhelper`: Fix processor metrics not being reported initially
    with 0 values.
    ([#&#8203;10855](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10855))
    
    - `service`: Implement the `temporality_preference` setting for internal
    telemetry exported via OTLP
    ([#&#8203;10745](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10745))
    
    - `configauth`: Fix unmarshaling of authentication in HTTP servers.
    ([#&#8203;10750](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10750))
    
    - `confmap`: If loading an invalid YAML string through a provider, use
    it verbatim instead of erroring out.
    ([#&#8203;10759](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10759))
    This makes the ${env:ENV} syntax closer to how ${ENV} worked before
    unifying syntaxes.
    
    - `component`: Allow component names of up to 1024 characters in length.
    ([#&#8203;10816](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10816))
    
    - `confmap`: Remove original string representation if invalid.
    ([#&#8203;10787](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10787))
    
    ###
    [`v0.106.1`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v01061)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.106.0...v0.106.1)
    
    ##### 🧰 Bug fixes 🧰
    
    - `configauth`: Fix unmarshaling of authentication in HTTP servers.
    ([#&#8203;10750](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10750))
    
    ###
    [`v0.106.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v01060)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.105.0...v0.106.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `service`: Update all metrics to include `otelcol_` prefix to ensure
    consistency across OTLP and Prometheus metrics
    ([#&#8203;9759](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9759))
    This change is marked as a breaking change as anyone that was using OTLP
    for metrics will
    see the new prefix which was not present before. Prometheus generated
    metrics remain
      unchanged.
    
    - `confighttp`: Delete `ClientConfig.CustomRoundTripper`
    ([#&#8203;8627](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/8627))
    Set (\*http.Client).Transport on the \*http.Client returned from
    ToClient to configure this.
    
    - `confmap`: When passing configuration for a string field using any
    provider, use the verbatim string representation as the value.
    ([#&#8203;10605](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10605),
    [#&#8203;10405](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10405))
    This matches the behavior of `${ENV}` syntax prior to the promotion of
    the `confmap.unifyEnvVarExpansion` feature gate
    to beta. It changes the behavior of the `${env:ENV}` syntax with escaped
    strings.
    
    - `component`: Adds restrictions on the character set for component.ID
    name.
    ([#&#8203;10673](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10673))
    
    - `processor/memorylimiter`: The memory limiter processor will no longer
    account for ballast size.
    ([#&#8203;10696](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10696))
    If you are already using GOMEMLIMIT instead of the ballast extension
    this does not affect you.
    
    - `extension/memorylimiter`: The memory limiter extension will no longer
    account for ballast size.
    ([#&#8203;10696](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10696))
    If you are already using GOMEMLIMIT instead of the ballast extension
    this does not affect you.
    
    - `service`: The service will no longer be able to get a ballast size
    from the deprecated ballast extension.
    ([#&#8203;10696](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10696))
    If you are already using GOMEMLIMIT instead of the ballast extension
    this does not affect you.
    
    ##### 🚀 New components 🚀
    
    - `client`: Create a new go module
    `go.opentelemetry.io/collector/client`
    ([#&#8203;9804](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9804))
    This module contains generic representations of clients connecting to
    different receivers.
    
    ##### 💡 Enhancements 💡
    
    - `exporterhelper`: Add data\_type attribute to
    `otelcol_exporter_queue_size` metric to report the type of data being
    processed.
    ([#&#8203;9943](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9943))
    - `confighttp`: Add option to include query params in auth context
    ([#&#8203;4806](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/4806))
    - `configgrpc`: gRPC auth errors now return gRPC status code
    UNAUTHENTICATED (16)
    ([#&#8203;7646](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/7646))
    - `httpprovider, httpsprovider`: Validate URIs in HTTP and HTTPS
    providers before fetching.
    ([#&#8203;10468](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10468))
    
    ##### 🧰 Bug fixes 🧰
    
    - `processorhelper`: update units for internal telemetry
    ([#&#8203;10647](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10647))
    - `confmap`: Increase the amount of recursion and URI expansions allowed
    in a single line
    ([#&#8203;10712](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10712))
    - `exporterhelper`: There is no guarantee that after the exporterhelper
    sends the plog/pmetric/ptrace data downstream that the data won't be
    mutated in some way. (e.g by the batch\_sender) This mutation could
    result in the proceeding call to req.ItemsCount() to provide inaccurate
    information to be logged.
    ([#&#8203;10033](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10033))
    - `exporterhelper`: Update units for internal telemetry
    ([#&#8203;10648](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10648))
    - `receiverhelper`: Update units for internal telemetry
    ([#&#8203;10650](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10650))
    - `scraperhelper`: Update units for internal telemetry
    ([#&#8203;10649](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10649))
    - `service`: Use Command/Version to populate service name/version
    attributes
    ([#&#8203;10644](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10644))
    
    ###
    [`v0.105.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1120v01050)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.104.0...v0.105.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `service`: add `service.disableOpenCensusBridge` feature gate which is
    enabled by default to remove the dependency on OpenCensus
    ([#&#8203;10414](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10414))
    - `confmap`: Promote `confmap.strictlyTypedInput` feature gate to beta.
    ([#&#8203;10552](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10552))
      This feature gate changes the following:
    - Configurations relying on the implicit type casting behaviors listed
    on
    [#&#8203;9532](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9532)
    will start to fail.
    - Configurations using URI expansion (i.e. `field: ${env:ENV}`) for
    string-typed fields will use the value passed in `ENV` verbatim without
    intermediate type casting.
    
    ##### 💡 Enhancements 💡
    
    - `configtls`: Mark module as stable.
    ([#&#8203;9377](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9377))
    - `confmap`: Remove extra closing parenthesis in sub-config error
    ([#&#8203;10480](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10480))
    - `configgrpc`: Update the default load balancer strategy to
    round\_robin
    ([#&#8203;10319](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10319))
    To restore the behavior that was previously the default, set
    `balancer_name` to `pick_first`.
    - `cmd/builder`: Add go module info the builder generated code.
    ([#&#8203;10570](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10570))
    - `otelcol`: Add go module to components subcommand.
    ([#&#8203;10570](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10570))
    - `confmap`: Add explanation to errors related to
    `confmap.strictlyTypedInput` feature gate.
    ([#&#8203;9532](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9532))
    - `confmap`: Allow using `map[string]any` values in string interpolation
    ([#&#8203;10605](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10605))
    
    ##### 🧰 Bug fixes 🧰
    
    - `builder`: provide context when a module in the config is missing its
    gomod value
    ([#&#8203;10474](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10474))
    - `confmap`: Fixes issue where confmap could not escape `$$` when
    `confmap.unifyEnvVarExpansion` is enabled.
    ([#&#8203;10560](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10560))
    - `mdatagen`: fix generated comp test for extensions and unused imports
    in templates
    ([#&#8203;10477](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10477))
    - `otlpreceiver`: Fixes a bug where the otlp receiver's http response
    was not properly translating grpc error codes to http status codes.
    ([#&#8203;10574](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10574))
    - `exporterhelper`: Fix incorrect deduplication of
    otelcol\_exporter\_queue\_size and otelcol\_exporter\_queue\_capacity
    metrics if multiple exporters are used.
    ([#&#8203;10444](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10444))
    - `service/telemetry`: Add ability to set service.name for spans emitted
    by the Collector
    ([#&#8203;10489](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10489))
    - `internal/localhostgate`: Correctly log info message when
    `component.UseLocalHostAsDefaultHost` is enabled
    ([#&#8203;8510](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/8510))
    
    ###
    [`v0.104.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1110v01040)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-collector/compare/v0.103.0...v0.104.0)
    
    This release includes 2 very important breaking changes.
    
    1. The `otlpreceiver` will now use `localhost` by default instead of
    `0.0.0.0`. This may break the receiver in containerized environments
    like Kubernetes. If you depend on `0.0.0.0` disable the
    `component.UseLocalHostAsDefaultHost` feature gate or explicitly set the
    endpoint to `0.0.0.0`.
    2. Expansion of BASH-style environment variables, such as `$FOO` will no
    longer be supported by default. If you depend on this syntax, disable
    the `confmap.unifyEnvVarExpansion` feature gate, but know that the
    feature will be removed in the future in favor of `${env:FOO}`.
    
    ##### 🛑 Breaking changes 🛑
    
    - `filter`: Remove deprecated `filter.CombinedFilter`
    ([#&#8203;10348](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10348))
    - `otelcol`: By default, `otelcol.NewCommand` and
    `otelcol.NewCommandMustSetProvider` will set the `DefaultScheme` to
    `env`.
    ([#&#8203;10435](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10435))
    - `expandconverter`: By default expandconverter will now error if it is
    about to expand `$FOO` syntax. Update configuration to use `${env:FOO}`
    instead or disable the `confmap.unifyEnvVarExpansion` feature gate.
    ([#&#8203;10435](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10435))
    - `otlpreceiver`: Switch to `localhost` as the default for all
    endpoints.
    ([#&#8203;8510](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/8510))
    Disable the `component.UseLocalHostAsDefaultHost` feature gate to
    temporarily get the previous default.
    
    ##### 💡 Enhancements 💡
    
    - `confighttp`: Add support for cookies in HTTP clients with
    `cookies::enabled`.
    ([#&#8203;10175](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10175))
    The method `confighttp.ToClient` will return a client with a
    `cookiejar.Jar` which will reuse cookies from server responses in
    subsequent requests.
    - `exporter/debug`: In `normal` verbosity, display one line of text for
    each telemetry record (log, data point, span)
    ([#&#8203;7806](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/7806))
    - `exporter/debug`: Add option `use_internal_logger`
    ([#&#8203;10226](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10226))
    - `configretry`: Mark module as stable.
    ([#&#8203;10279](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10279))
    - `debugexporter`: Print Span.TraceState() when present.
    ([#&#8203;10421](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10421))
    Enables viewing sampling threshold information (as by OTEP 235
    samplers).
    - `processorhelper`: Add "inserted" metrics for processors.
    ([#&#8203;10353](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10353))
      This includes the following metrics f
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MS4xNTkuNCIsInVwZGF0ZWRJblZlciI6IjQxLjE1OS40IiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
