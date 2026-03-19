commit a646a2eaffa4b420bba09b0b442e4d30705d6550
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Oct 28 01:15:08 2025 +0000

    fix(deps): update module go.opentelemetry.io/collector/component to v1 (#14089)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Confidence |
    |---|---|---|---|
    |
    [go.opentelemetry.io/collector/component](https://redirect.github.com/open-telemetry/opentelemetry-collector)
    | `v0.120.0` -> `v1.44.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fcollector%2fcomponent/v1.44.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fcollector%2fcomponent/v0.120.0/v1.44.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    :warning: MAJOR VERSION UPDATE :warning: - please manually update this
    package
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-collector
    (go.opentelemetry.io/collector/component)</summary>
    
    ###
    [`v1.44.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1440v01380)
    
    ##### 🛑 Breaking changes 🛑
    
    - `all`: Remove deprecated type `TracesConfig`
    ([#&#8203;14036](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14036))
    
    - `pkg/exporterhelper`: Add default values for `sending_queue::batch`
    configuration.
    ([#&#8203;13766](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13766))
    Setting `sending_queue::batch` to an empty value now results in the same
    setup as the default batch processor configuration.
    
    - `all`: Add unified print-config command with mode support (redacted,
    unredacted), json support (unstable), and validation support.
    ([#&#8203;11775](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11775))
    This replaces the `print-initial-config` command. See the `service`
    package README for more details. The original command name
    `print-initial-config` remains an alias, to be retired with the feature
    flag.
    
    ##### 💡 Enhancements 💡
    
    - `all`: Add `keep_alives_enabled` option to ServerConfig to control
    HTTP keep-alives for all components that create an HTTP server.
    ([#&#8203;13783](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13783))
    - `pkg/otelcol`: Avoid unnecessary mutex in collector logs, replace by
    atomic pointer
    ([#&#8203;14008](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14008))
    - `cmd/mdatagen`: Add lint/ordering validation for metadata.yaml
    ([#&#8203;13781](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13781))
    - `pdata/xpdata`: Refactor JSON marshaling and unmarshaling to use
    `pcommon.Value` instead of `AnyValue`.
    ([#&#8203;13837](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13837))
    - `pkg/exporterhelper`: Expose `MergeCtx` in exporterhelper's queue
    batch settings\`
    ([#&#8203;13742](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13742))
    
    ##### 🧰 Bug fixes 🧰
    
    - `all`: Fix zstd decoder data corruption due to decoder pooling for all
    components that create an HTTP server.
    ([#&#8203;13954](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13954))
    - `pkg/otelcol`: Remove UB when taking internal logs and move them to
    the final zapcore.Core
    ([#&#8203;14009](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14009))
      This can happen because of a race on accessing `logsTaken`.
    - `pkg/confmap`: Fix a potential race condition in confmap by closing
    the providers first.
    ([#&#8203;14018](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/14018))
    
    <!-- previous-version -->
    
    ###
    [`v1.43.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1430v01370)
    
    ##### 💡 Enhancements 💡
    
    - `cmd/mdatagen`: Improve validation for resource attribute `enabled`
    field in metadata files
    ([#&#8203;12722](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12722))
    Resource attributes now require an explicit `enabled` field in
    metadata.yaml files, while regular attributes
    are prohibited from having this field. This improves validation and
    prevents configuration errors.
    
    - `all`: Changelog entries will now have their component field checked
    against a list of valid components.
    ([#&#8203;13924](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13924))
    This will ensure a more standardized changelog format which makes it
    easier to parse.
    
    - `pkg/pdata`: Mark featuregate pdata.useCustomProtoEncoding as stable
    ([#&#8203;13883](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13883))
    
    <!-- previous-version -->
    
    ###
    [`v1.42.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1420v01360)
    
    ##### 💡 Enhancements 💡
    
    - `xpdata`: Add Serialization and Deserialization of AnyValue
    ([#&#8203;12826](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12826))
    - `debugexporter`: add support for batching
    ([#&#8203;13791](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13791))
      The default queue size is 1
    - `configtls`: Add early validation for TLS server configurations to
    fail fast when certificates are missing instead of failing at runtime.
    ([#&#8203;13130](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13130),
    [#&#8203;13245](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13245))
    - `mdatagen`: Expose stability level in generated metric documentation
    ([#&#8203;13748](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13748))
    - `internal/tools`: Add support for modernize in Makefile
    ([#&#8203;13796](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13796))
    
    ##### 🧰 Bug fixes 🧰
    
    - `otelcol`: Fix a potential deadlock during collector shutdown.
    ([#&#8203;13740](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13740))
    - `otlpexporter`: fix the validation of unix socket endpoints
    ([#&#8203;13826](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13826))
    
    <!-- previous-version -->
    
    ###
    [`v1.41.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1410v01350)
    
    ##### 💡 Enhancements 💡
    
    - `exporterhelper`: Add new `exporter_queue_batch_send_size` and
    `exporter_queue_batch_send_size_bytes` metrics, showing the size of
    telemetry batches from the exporter.
    ([#&#8203;12894](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12894))
    
    <!-- previous-version -->
    
    ###
    [`v1.40.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1400v01340)
    
    ##### 💡 Enhancements 💡
    
    - `pdata`: Add custom grpc/encoding that replaces proto and calls into
    the custom marshal/unmarshal logic in pdata.
    ([#&#8203;13631](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13631))
    This change should not affect other gRPC calls since it fallbacks to the
    default grpc/proto encoding if requests are not pdata/otlp requests.
    - `pdata`: Avoid copying the pcommon.Map when same origin
    ([#&#8203;13731](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13731))
    This is a very large improvement if using OTTL with map functions since
    it will avoid a map copy.
    - `exporterhelper`: Respect `num_consumers` when batching and
    partitioning are enabled.
    ([#&#8203;13607](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13607))
    
    ##### 🧰 Bug fixes 🧰
    
    - `pdata`: Correctly parse OTLP payloads containing non-packed repeated
    primitive fields
    ([#&#8203;13727](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13727),
    [#&#8203;13730](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13730))
    This bug prevented the Collector from ingesting most Histogram,
    ExponentialHistogram,
      and Profile payloads.
    
    <!-- previous-version -->
    
    ###
    [`v1.39.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1390v01330)
    
    ##### 🛑 Breaking changes 🛑
    
    - `all`: Increase minimum Go version to 1.24
    ([#&#8203;13627](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13627))
    
    ##### 💡 Enhancements 💡
    
    - `otlphttpexporter`: Add `profiles_endpoint` configuration option to
    allow custom endpoint for profiles data export
    ([#&#8203;13504](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13504))
    The `profiles_endpoint` configuration follows the same pattern as
    `traces_endpoint`, `metrics_endpoint`, and `logs_endpoint`.
    When specified, profiles data will be sent to the custom URL instead of
    the default `{endpoint}/v1development/profiles`.
    
    - `pdata`: Add support for local memory pooling for data objects.
    ([#&#8203;13678](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13678))
    This is still an early experimental (alpha) feature. Do not recommended
    to be used production. To enable use
    "--featuregate=+pdata.useProtoPooling"
    
    - `pdata`: Optimize CopyTo messages to avoid any copy when same source
    and destination
    ([#&#8203;13680](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13680))
    
    - `receiverhelper`: New feature flag to make receiverhelper distinguish
    internal vs. downstream errors using new `otelcol_receiver_failed_x` and
    `otelcol_receiver_requests` metrics
    ([#&#8203;12207](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12207),
    [#&#8203;12802](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12802))
    This is a breaking change for the semantics of the
    otelcol\_receiver\_refused\_metric\_points,
    otelcol\_receiver\_refused\_log\_records and
    otelcol\_receiver\_refused\_spans metrics.
    These new metrics and semantics are enabled through the
    `receiverhelper.newReceiverMetrics` feature gate.
    
    - `debugexporter`: Add support for entity references in debug exporter
    output
    ([#&#8203;13324](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13324))
    
    - `pdata`: Fix unnecessary allocation of a new state when adding new
    values to pcommon.Map
    ([#&#8203;13634](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13634))
    
    - `service`: Implement refcounting for pipeline data owned memory.
    ([#&#8203;13631](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13631))
      This feature is protected by `--featuregate=+pdata.useProtoPooling`.
    
    - `service`: Add a debug-level log message when a consumer returns an
    error.
    ([#&#8203;13357](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13357))
    
    - `xpdata`: Optimize xpdata/context for persistent queue when only one
    value for key
    ([#&#8203;13636](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13636))
    
    - `otlpreceiver`: Log the listening addresses of the receiver, rather
    than the configured endpoints.
    ([#&#8203;13654](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13654))
    
    - `pdata`: Use the newly added proto marshaler/unmarshaler for the
    official proto Marshaler/Unmarshaler
    ([#&#8203;13637](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13637))
    If any problems observed with this consider to disable the featuregate
    `--feature-gates=-pdata.useCustomProtoEncoding`
    
    <!-- cspell:ignore MLKEM mlkem -->
    
    - `configtls`: Enable X25519MLKEM768 as per draft-ietf-tls-ecdhe-mlkem
    ([#&#8203;13670](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13670))
    
    ##### 🧰 Bug fixes 🧰
    
    - `exporterhelper`: Prevent uncontrolled goroutines in batcher due to a
    incorrect worker pool behaviour.
    ([#&#8203;13689](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13689))
    - `service`: Ensure the insecure configuration is accounted for when
    normalizing the endpoint.
    ([#&#8203;13691](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13691))
    - `configoptional`: Allow validating nested types
    ([#&#8203;13579](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13579))
      `configoptional.Optional` now implements `xconfmap.Validator`
    - `batchprocessor`: Fix UB in batch processor when trying to read bytes
    size after adding request to pipeline
    ([#&#8203;13698](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13698))
    This bug only happens id detailed metrics are enabled and also an async
    (sending queue enabled) exporter that mutates data is configure.
    
    <!-- previous-version -->
    
    ###
    [`v1.38.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1380v01320)
    
    ##### 🛑 Breaking changes 🛑
    
    - `componentstatus`: Change the signature of the
    componentstatus.NewEvent to accept multiple options.
    ([#&#8203;13210](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13210))
    Changes the signature of the component.NewEvent to accept multiple
    EventBuilderOption,
      like the new WithAttributes constructor.
    
    ##### 🚩 Deprecations 🚩
    
    - `service`: move service.noopTraceProvider feature gate to deprecated
    stage
    ([#&#8203;13492](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13492))
    The functionality of the feature gate is available via configuration
    with the following telemetry settings:
      ```
      service:
        telemetry:
          traces:
            level: none
      ```
    
    - `mdatagen`: Remove the deletion of
    `generated_component_telemetry_test.go`.
    ([#&#8203;12067](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12067))
    This file used to be generated by mdatagen. Starting with 0.122.0, the
    code deletes that file.
    It is no longer necessary to delete the file, as code has had time to
    upgrade to mdatagen and delete the file.
    
    - `service`: The `telemetry.disableHighCardinalityMetrics` feature gate
    is deprecated
    ([#&#8203;13537](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13537))
    The feature gate is now deprecated since metric views can be configured.
      The feature gate will be removed in v0.134.0.
    
    The metric attributes removed by this feature gate are no longer emitted
      by the Collector by default, but if needed, you can achieve the same
      functionality by configuring the following metric views:
    
      ```yaml
      service:
        telemetry:
          metrics:
            level: detailed
            views:
              - selector:
    meter_name:
    "go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc"
                stream:
                  attribute_keys:
    excluded: ["net.sock.peer.addr", "net.sock.peer.port",
    "net.sock.peer.name"]
              - selector:
    meter_name:
    "go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp"
                stream:
                  attribute_keys:
                    excluded: ["net.host.name", "net.host.port"]
      ```
    
    Note that this requires setting `service::telemetry::metrics::level:
    detailed`.
    If you have a strong use case for using views in combination with a
    different
      level, please show your interest in
    
    [#&#8203;10769](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10769).
    
    ##### 💡 Enhancements 💡
    
    - `pdata`: Generate Logs/Traces/Metrics/Profiles and
    p\[log|trace|metric|profile]ExportResponse with pdatagen.
    ([#&#8203;13597](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13597))
    This change brings consistency on how these structs are written and
    remove JSON marshaling/unmarshaling hand written logic.
    - `confighttp`: Add option to configure ForceAttemptHTTP2 to support
    HTTP/1 specific transport settings.
    ([#&#8203;13426](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13426))
    - `pdata`: Avoid unnecessary buffer copy when JSON marshal fails.
    ([#&#8203;13598](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13598))
    - `cmd/mdatagen`: Use a custom host implementation for lifecycle tests
    ([#&#8203;13589](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13589))
    Use a custom noop host implementation that implements all
    non-deprecated, publicly-accessible interfaces implemented by the
    Collector service.
    - `processorhelper`: Add processor internal duration metric.
    ([#&#8203;13231](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13231))
    - `pdata`: Improve RemoveIf for slices to not reference anymore the
    removed memory
    ([#&#8203;13522](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13522))
    
    ##### 🧰 Bug fixes 🧰
    
    - `pdata`: Fix null pointer access when copying into a slice with larger
    cap but smaller len.
    ([#&#8203;13523](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13523))
    
    - `confighttp`: Fix middleware configuration field name from
    "middleware" to "middlewares" for consistency with configgrpc
    ([#&#8203;13444](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13444))
    
    - `memorylimiterextension, memorylimiterprocessor`: Memory limiter
    extension and processor shutdown don't throw an error if the component
    was not started first.
    ([#&#8203;9687](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9687))
    The components would throw an error if they were shut down before being
    started.
    With this change, they will no longer return an error, conforming to the
    lifecycle of components expected.
    
    - `confighttp`: Reuse zstd Reader objects
    ([#&#8203;11824](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11824))
    
    <!-- previous-version -->
    
    ###
    [`v1.37.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1370v01310)
    
    ##### 🛑 Breaking changes 🛑
    
    - `confighttp`: Move `confighttp.framedSnappy` feature gate to beta.
    ([#&#8203;10584](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10584))
    
    ##### 💡 Enhancements 💡
    
    - `exporter/debug`: Move to alpha stability except profiles
    ([#&#8203;13487](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13487))
    
    - `exporterhelper`: Enable `exporter.PersistRequestContext` feature gate
    by default.
    ([#&#8203;13437](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13437))
    Request context is now preserved by default when using persistent
    queues.
    Note that Auth extensions context is not propagated through the
    persistent queue.
    
    - `pdata`: Use pdatagen to generate marshalJSON without using gogo proto
    jsonpb.
    ([#&#8203;13450](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13450))
    
    - `otlpreceiver`: Remove usage of gogo proto which uses
    reflect.Value.MethodByName. Removes one source of disabling DCE.
    ([#&#8203;12747](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12747))
    
    - `exporterhelper`: Fix metrics split logic to consider metrics
    description into the size.
    ([#&#8203;13418](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13418))
    
    - `service`: New pipeline instrumentation now differentiates internal
    failures from downstream errors
    ([#&#8203;13234](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13234))
    With the telemetry.newPipelineTelemetry feature gate enabled, the
    "received" and "produced"
    metrics related to a component now distinguish between two types of
    errors:
    - "outcome = failure" indicates that the component returned an internal
    error;
    - "outcome = refused" indicates that the component successfully emitted
    data, but returned an
        error coming from a downstream component processing that data.
    
    - `pdata`: Remove usage of text/template from pdata, improves DCE.
    ([#&#8203;12747](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12747))
    
    - `architecture`: New Tier 3 platform riscv64 allowing the collector to
    be built and distributed for this platform.
    ([#&#8203;13462](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13462))
    
    ##### 🧰 Bug fixes 🧰
    
    - `exporterhelper`: Prevents the exporter for being stuck when telemetry
    data is bigger than batch.max\_size
    ([#&#8203;12893](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12893))
    - `mdatagen`: Fix import paths for mdatagen component
    ([#&#8203;13069](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13069))
    - `otlpreceiver`: Error handler correctly fallbacks to content type
    ([#&#8203;13414](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13414))
    - `pdata/pprofiles`: Fix profiles JSON unmarshal logic for
    originalPayload. The bytes have to be base64 encoded.
    ([#&#8203;13483](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13483))
    - `xpdata`: Fix unmarshaling JSON for entities, add e2e tests to avoid
    this in the future.
    ([#&#8203;13480](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13480))
    - `service`: Downgrade dependency of prometheus exporter in OTel Go SDK
    ([#&#8203;13429](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13429))
    This fixes the bug where collector's internal metrics are emitted with
    an unexpected suffix in their names when users configure the
    service::telemetry::metrics::readers with Prometheus
    - `service`: Revert Default internal metrics config now enables
    `otel_scope_` labels
    ([#&#8203;12939](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12939),
    [#&#8203;13344](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13344))
    Reverting change temporarily due to prometheus exporter downgrade. This
    unfortunately re-introduces the bug that instrumentation scope
    attributes cause errors in Prometheus exporter. See
    [#&#8203;12939](http://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12939)
    for details.
    - `builder`: Remove undocumented handling of `DIST_*` environment
    variables replacements
    ([#&#8203;13335](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13335))
    
    <!-- previous-version -->
    
    ###
    [`v1.36.1`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1361v01301)
    
    ##### 🧰 Bug fixes 🧰
    
    - `service`: Fixes bug where internal metrics are emitted with an
    unexpected suffix in their names when users configure
    `service::telemetry::metrics::readers` with Prometheus.
    ([#&#8203;13449](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13449))
    See more details on
    [open-telemetry/opentelemetry-go#7039](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7039)
    
    <!-- previous-version -->
    
    ###
    [`v1.36.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1360v01300)
    
    ##### ❗ Known Issues ❗
    
    - Due to a
    [bug](https://redirect.github.com/open-telemetry/opentelemetry-go/issues/7039)
    in the prometheus exporter, if you are configuring a prometheus
    exporter, the collector's internal metrics will be emitted with an
    unexpected suffix in its name. For example, the metric
    `otelcol_exporter_sent_spans__spans__total` instead of
    `otelcol_exporter_sent_spans_total`. The workaround is to manually
    configure `without_units: true` in your prometheus exporter config
    
      ```yaml
      service:
        telemetry:
          metrics:
            readers:
              - pull:
                  exporter:
                    prometheus:
                      host: 0.0.0.0
                      port: 8888
                      without_units: true
      ```
    
    If you are using the collector's default Prometheus exporter for
    exporting internal metrics you are unaffected.
    
    ##### 🛑 Breaking changes 🛑
    
    - `exporter/otlp`: Remove deprecated batcher config from OTLP, use
    queuebatch
    ([#&#8203;13339](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13339))
    
    ##### 💡 Enhancements 💡
    
    - `exporterhelper`: Enable items and bytes sizers for persistent queue
    ([#&#8203;12881](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12881))
    - `exporterhelper`: Refactor persistent storage size backup to always
    record it.
    ([#&#8203;12890](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12890))
    - `exporterhelper`: Add support to configure a different Sizer for the
    batcher than the queue
    ([#&#8203;13313](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13313))
    - `yaml`: Replaced `sigs.k8s.io/yaml` with `go.yaml.in/yaml` for
    improved support and long-term maintainability.
    ([#&#8203;13308](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13308))
    
    ##### 🧰 Bug fixes 🧰
    
    - `exporterhelper`: Fix exporter.PersistRequestContext feature gate
    ([#&#8203;13342](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13342))
    
    - `exporterhelper`: Preserve all metrics metadata when batch splitting.
    ([#&#8203;13236](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13236))
    Previously, when large batches of metrics were processed, the splitting
    logic in `metric_batch.go` could
    cause the `name` field of some metrics to disappear. This fix ensures
    that all metric fields are
      properly preserved when `metricRequest` objects are split.
    
    - `service`: Default internal metrics config now enables `otel_scope_`
    labels
    ([#&#8203;12939](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12939),
    [#&#8203;13344](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13344))
    By default, the Collector exports its internal metrics using a
    Prometheus
    exporter from the opentelemetry-go repository. With this change, the
    Collector
      no longer sets "without\_scope\_info" to true in its configuration.
    
      This means that all exported metrics will have `otel_scope_name`,
    `otel_scope_schema_url`, and `otel_scope_version` labels corresponding
    to the
      instrumentation scope metadata for that metric.
    
    This notably prevents an error when multiple metrics are only
    distinguished
      by their instrumentation scopes and end up aliased during export.
    
    If this is not desired behavior, a Prometheus exporter can be explicitly
      configured with this option enabled.
    
    <!-- previous-version -->
    
    ###
    [`v1.35.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1350v01290)
    
    ##### 🛑 Breaking changes 🛑
    
    - `exporterhelper`: Remove deprecated sending\_queue::blocking options,
    use sending\_queue::block\_on\_overflow.
    ([#&#8203;13211](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13211))
    
    ##### 💡 Enhancements 💡
    
    - `mdatagen`: Taught mdatagen to print the `go list` stderr output on
    failures, and to run `go list` where the metadata file is.
    ([#&#8203;13205](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13205))
    
    - `service`: Support setting `sampler` and `limits` under
    `service::telemetry::traces`
    ([#&#8203;13201](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13201))
    This allows users to enable sampling and set span limits on internal
    Collector traces using the
      OpenTelemetry SDK declarative configuration.
    
    - `pdata/pprofile`: Add new helper methods `FromLocationIndices` and
    `PutLocation` to read and modify the content of locations.
    ([#&#8203;13150](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13150))
    
    - `exporterhelper`: Preserve request span context and client information
    in the persistent queue.
    ([#&#8203;11740](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11740),
    [#&#8203;13220](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13220),
    [#&#8203;13232](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13232))
    It allows internal collector spans and client information to propagate
    through the persistent queue used by
      the exporters. The same way as it's done for the in-memory queue.
    Currently, it is behind the exporter.PersistRequestContext feature gate,
    which can be enabled by adding
    `--feature-gates=exporter.PersistRequestContext` to the collector
    command line. An exporter buffer stored by
    a previous version of the collector (or by a collector with the feature
    gate disabled) can be read by a newer
    collector with the feature enabled. However, the reverse is not
    supported: a buffer stored by a newer collector with
    the feature enabled cannot be read by an older collector (or by a
    collector with the feature gate disabled).
    
    ##### 🧰 Bug fixes 🧰
    
    - `pdata`: Fix copying of optional fields when the source is unset.
    ([#&#8203;13268](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13268))
    - `service`: Only allocate one set of internal log sampling counters
    ([#&#8203;13014](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13014))
      The case where logs are only exported to stdout was fixed in v0.126.0;
    this new fix also covers the case where logs are exported through OTLP.
    
    <!-- previous-version -->
    
    ###
    [`v1.34.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1340v01280)
    
    ##### 🛑 Breaking changes 🛑
    
    - `service/telemetry`: Mark
    "telemetry.disableAddressFieldForInternalTelemetry" as stable
    ([#&#8203;13152](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13152))
    
    ##### 💡 Enhancements 💡
    
    - `confighttp`: Update the HTTP server span naming to use the HTTP
    method and route pattern instead of the path.
    ([#&#8203;12468](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12468))
    The HTTP server span name will now be formatted as
    `<http.request.method> <http.route>`.
    If a route pattern is not available, it will fall back to
    `<http.request.method>`.
    
    - `service`: Use configured loggers to log errors as soon as it is
    available
    ([#&#8203;13081](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13081))
    
    - `service`: Remove stabilized featuregate
    useOtelWithSDKConfigurationForInternalTelemetry
    ([#&#8203;13152](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13152))
    
    ##### 🧰 Bug fixes 🧰
    
    - `telemetry`: Add generated resource attributes to the printed log
    messages.
    ([#&#8203;13110](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13110))
    If service.name, service.version, or service.instance.id are not
    specified in the config, they will be generated automatically.
    This change ensures that these attributes are also included in the
    printed log messages.
    
    - `mdatagen`: Fix generation when there are no events in the metadata.
    ([#&#8203;13123](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13123))
    
    - `confmap`: Do not panic on assigning nil maps to non-nil maps
    ([#&#8203;13117](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13117))
    
    - `pdata`: Fix event\_name skipped when unmarshalling LogRecord from
    JSON
    ([#&#8203;13127](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13127))
    
    <!-- previous-version -->
    
    ###
    [`v1.33.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1330v01270)
    
    ##### 🚩 Deprecations 🚩
    
    - `semconv`: Deprecating the semconv package in favour of
    go.opentelemetry.io/otel/semconv
    ([#&#8203;13012](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13012))
    
    ##### 💡 Enhancements 💡
    
    - `exporter/debug`: Display resource and scope in `normal` verbosity
    ([#&#8203;10515](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10515))
    - `service`: Add size metrics defined in Pipeline Component Telemetry
    RFC
    ([#&#8203;13032](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13032))
    See [Pipeline Component Telemetry
    RFC](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/main/docs/rfcs/component-universal-telemetry.md)
    for more details:
      - `otelcol.receiver.produced.size`
      - `otelcol.processor.consumed.size`
      - `otelcol.processor.produced.size`
      - `otelcol.connector.consumed.size`
      - `otelcol.connector.produced.size`
      - `otelcol.exporter.consumed.size`
    
    <!-- previous-version -->
    
    ###
    [`v1.32.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1320v01260)
    
    ##### 🛑 Breaking changes 🛑
    
    - `configauth`: Removes deprecated `configauth.Authentication` and
    `extensionauthtest.NewErrorClient`
    ([#&#8203;12992](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12992))
      The following have been removed:
      - `configauth.Authentication` use `configauth.Config` instead
    - `extensionauthtest.NewErrorClient` use `extensionauthtest.NewErr`
    instead
    
    ##### 💡 Enhancements 💡
    
    - `service`: Replace `go.opentelemetry.io/collector/semconv` usage with
    `go.opentelemetry.io/otel/semconv`
    ([#&#8203;12991](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12991))
    
    - `confmap`: Update the behavior of the confmap.enableMergeAppendOption
    feature gate to merge only component lists.
    ([#&#8203;12926](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12926))
    
    - `service`: Add item count metrics defined in Pipeline Component
    Telemetry RFC
    ([#&#8203;12812](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12812))
    See [Pipeline Component Telemetry
    RFC](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/main/docs/rfcs/component-universal-telemetry.md)
    for more details:
      - `otelcol.receiver.produced.items`
      - `otelcol.processor.consumed.items`
      - `otelcol.processor.produced.items`
      - `otelcol.connector.consumed.items`
      - `otelcol.connector.produced.items`
      - `otelcol.exporter.consumed.items`
    
    - `tls`: Add trusted platform module (TPM) support to TLS
    authentication.
    ([#&#8203;12801](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12801))
    Now the TLS allows the use of TPM for loading private keys (e.g. in TSS2
    format).
    
    ##### 🧰 Bug fixes 🧰
    
    - `exporterhelper`: Add validation error for batch config if min\_size
    is greater than queue\_size.
    ([#&#8203;12948](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12948))
    
    - `telemetry`: Allocate less memory per component when OTLP exporting of
    logs is disabled
    ([#&#8203;13014](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13014))
    
    - `confmap`: Use reflect.DeepEqual to avoid panic when
    confmap.enableMergeAppendOption feature gate is enabled.
    ([#&#8203;12932](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12932))
    
    - `internal telemetry`: Add resource attributes from telemetry.resource
    to the logger
    ([#&#8203;12582](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12582))
    Resource attributes from telemetry.resource were not added to the
    internal
      console logs.
    
      Now, they are added to the logger as part of the "resource" field.
    
    - `confighttp and configcompression`: Fix handling of `snappy`
    content-encoding in a backwards-compatible way
    ([#&#8203;10584](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10584),
    [#&#8203;12825](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12825))
    The collector used the Snappy compression type of "framed" to handle the
    HTTP
    content-encoding "snappy". However, this encoding is typically used to
    indicate
    the "block" compression variant of "snappy". This change allows the
    collector to:
    
    - When receiving a request with encoding 'snappy', the server endpoints
    will peek
    at the first bytes of the payload to determine if it is "framed" or
    "block" snappy,
    and will decompress accordingly. This is a backwards-compatible change.
    
    If the feature-gate "confighttp.framedSnappy" is enabled, you'll see new
    behavior for both client and server:
    
    - Client compression type "snappy" will now compress to the "block"
    variant of snappy
    instead of "framed". Client compression type "x-snappy-framed" will now
    compress to the "framed" variant of snappy.
    - Servers will accept both "snappy" and "x-snappy-framed" as valid
    content-encodings.
    
    - `tlsconfig`: Disable TPM tests on MacOS/Darwin
    ([#&#8203;12964](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12964))
    
    <!-- previous-version -->
    
    ###
    [`v1.31.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1310v01250)
    
    ##### 🛑 Breaking changes 🛑
    
    - `service`: Lowercase values for 'otelcol.component.kind' attributes.
    ([#&#8203;12865](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12865))
    - `service`: Restrict the `telemetry.newPipelineTelemetry` feature gate
    to metrics.
    ([#&#8203;12856](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12856),
    [#&#8203;12933](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12933))
    The "off" state of this feature gate introduced a regression, where the
    Collector's internal logs were missing component attributes. See issue
    [#&#8203;12870](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12870)
    for more details on this bug.
    
    On the other hand, the "on" state introduced an issue with the
    Collector's default internal metrics, because the Prometheus exporter
    does not currently support instrumentation scope attributes.
    
    To solve both of these issues, this change turns on the new scope
    attributes for logs and traces by default regardless of the feature
    gate.
    However, the new scope attributes for metrics stay locked behind the
    feature gate, and will remain off by default until the Prometheus
    exporter is updated to support scope attributes.
    
    Please understand that enabling the `telemetry.newPipelineTelemetry`
    feature gate may break the export of Collector metrics through,
    depending on your configuration.
    Having a `batch` processor in multiple pipelines is a known trigger for
    this.
    
    This comes with a breaking change, where internal logs exported through
    OTLP will now use instrumentation scope attributes to identify the
    source component instead of log attributes.
    This does not affect the Collector's stderr output. See the changelog
    for v0.123.0 for a more detailed description of the gate's effects.
    
    ##### 💡 Enhancements 💡
    
    - `mdatagen`: Add support for attributes for telemetry configuration in
    metadata.
    ([#&#8203;12919](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12919))
    - `configmiddleware`: Add extensionmiddleware interface.
    ([#&#8203;12603](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12603),
    [#&#8203;9591](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9591))
    - `configgrpc`: Add gRPC middleware support.
    ([#&#8203;12603](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12603),
    [#&#8203;9591](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9591))
    - `confighttp`: Add HTTP middleware support.
    ([#&#8203;12603](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12603),
    [#&#8203;9591](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9591),
    [#&#8203;7441](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/7441))
    - `configmiddleware`: Add configmiddleware struct.
    ([#&#8203;12603](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12603),
    [#&#8203;9591](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9591))
    
    ##### 🧰 Bug fixes 🧰
    
    - `exporterhelper`: Do not ignore the `num_consumers` setting when
    batching is enabled.
    ([#&#8203;12244](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12244))
    - `exporterhelper`: Reject elements larger than the queue capacity
    ([#&#8203;12847](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12847))
    - `mdatagen`: Add time and plog package imports
    ([#&#8203;12907](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12907))
    - `confmap`: Maintain nil values when marshaling or unmarshaling nil
    slices
    ([#&#8203;11882](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11882))
    Previously, nil slices were converted to empty lists, which are
    semantically different
    than a nil slice. This change makes this conversion more consistent when
    encoding
      or decoding config, and these values are now maintained.
    
    <!-- previous-version -->
    
    ###
    [`v1.30.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1300v01240)
    
    ##### 💡 Enhancements 💡
    
    - `exporterhelper`: Add support for bytes-based batching for profiles in
    the exporterhelper package.
    ([#&#8203;3262](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/3262))
    - `otelcol`: Enhance config validation using <validate> command to
    capture all validation errors that prevents the collector from starting.
    ([#&#8203;8721](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/8721))
    - `exporterhelper`: Link batcher context to all batched request's span
    contexts.
    ([#&#8203;12212](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12212),
    [#&#8203;8122](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/8122))
    
    ##### 🧰 Bug fixes 🧰
    
    - `confighttp`: Ensure http authentication server failures are handled
    by the provided error handler
    ([#&#8203;12666](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12666))
    
    <!-- previous-version -->
    
    ###
    [`v1.29.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1290v01230)
    
    ##### ❗ Known Issues ❗
    
    - This version increases memory usage by \~0.5 MB per component in the
    pipelines because a separate Zap Core logger is
    initialized for each component. The issue is partially fixed in v0.126.0
    for users who write logs to stdout, but do
    not export logs via OTLP. See
    [#&#8203;13014](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/13014)
    for more details.
    
    ##### 🛑 Breaking changes 🛑
    
    - `service/telemetry`: Mark
    `telemetry.disableAddressFieldForInternalTelemetry` as beta, usage of
    deprecated service::telemetry::address are ignored
    ([#&#8203;25115](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/25115))
    To restore the previous behavior disable
    `telemetry.disableAddressFieldForInternalTelemetry` feature gate.
    - `exporterbatch`: Remove deprecated fields `min_size_items` and
    `max_size_items` from batch config.
    ([#&#8203;12684](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12684))
    
    ##### 🚩 Deprecations 🚩
    
    - `otlpexporter`: Mark BatcherConfig as deprecated, use
    `sending_queue::batch` instead
    ([#&#8203;12726](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12726))
    - `exporterhelper`: Deprecate `blocking` in favor of
    `block_on_overflow`.
    ([#&#8203;12710](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12710))
    - `exporterhelper`: Deprecate configuring exporter batching separately.
    Use `sending_queue::batch` instead.
    ([#&#8203;12772](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12772))
    Moving the batching configuration to `sending_queue::batch` requires
    setting `sending_queue::sizer` to `items`
    which means that `sending_queue::queue_size` needs to be also increased
    by the average batch size number (roughly
      x5000 for the default batching configuration).
    See
    <https://github.com/open-telemetry/opentelemetry-collector/tree/main/exporter/exporterhelper#configuration>
    
    ##### 💡 Enhancements 💡
    
    - `exporterhelper`: Add support to configure batching in the sending
    queue.
    ([#&#8203;12746](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12746))
    
    - `exporterhelper`: Add support for wait\_for\_result, remove
    disabled\_queue
    ([#&#8203;12742](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12742))
    This has a side effect for users of the experimental BatchConfig with
    the queue disabled, since not this is | uses only NumCPU() consumers.
    
    - `exporterhelper`: Allow exporter memory queue to use different type of
    sizers.
    ([#&#8203;12708](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12708))
    
    - `service`: Add "telemetry.newPipelineTelemetry" feature gate to inject
    component-identifying attributes in internal telemetry
    ([#&#8203;12217](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12217))
    With the feature gate enabled, all internal telemetry
    (metrics/traces/logs) will include some of
      the following instrumentation scope attributes:
    
      - `otelcol.component.kind`
      - `otelcol.component.id`
      - `otelcol.pipeline.id`
      - `otelcol.signal`
      - `otelcol.signal.output`
    
    These attributes are defined in the [Pipeline Component Telemetry
    RFC](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/main/docs/rfcs/component-universal-telemetry.md#attributes),
    and identify the component instance from which the telemetry originates.
      They are added automatically without changes to component code.
    
    These attributes were already included in internal logs as regular log
    attributes, starting from
    v0.120.0. For consistency with other signals, they have been switched to
    scope attributes (with
    the exception of logs emitted to standard output), and are now enabled
    by the feature gate.
    
    Please make sure that the exporter / backend endpoint you use has
    support for instrumentation
    scope attributes before using this feature. If the internal telemetry is
    exported to another
    Collector, a transform processor could be used to turn them into other
    kinds of attributes if
      necessary.
    
    - `exporterhelper`: Enable support to do batching using `bytes` sizer
    ([#&#8203;12751](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12751))
    
    - `service`: Add config key to set metric views used for internal
    telemetry
    ([#&#8203;10769](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10769))
    The `service::telemetry::metrics::views` config key can now be used to
    explicitly set the list of
    metric views used for internal telemetry, mirroring
    `meter_provider::views` in the SDK config.
    This can be used to disable specific internal metrics, among other uses.
    
    This key will cause an error if used alongside other features which
    would normally implicitly create views, such as:
    
      - not setting `service::telemetry::metrics::level` to `detailed`;
      - enabling the `telemetry.disableHighCardinalityMetrics` feature flag.
    
    ##### 🧰 Bug fixes 🧰
    
    - `exporterhelper`: Fix order of starting between queue and batch.
    ([#&#8203;12705](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12705))
    
    <!-- previous-version -->
    
    ###
    [`v1.28.1`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1281v01221)
    
    ##### 🧰 Bug fixes 🧰
    
    - `confmap`: Ensure slices with defaults containing struct values are
    correctly set.
    ([#&#8203;12661](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12661))
    This reverts the changes made in
    [#&#8203;11882](https://redirect.github.com/open-telemetry/opentelemetry-collector/pull/11882).
    
    <!-- previous-version -->
    
    ###
    [`v1.28.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1280v01220)
    
    ##### 🛑 Breaking changes 🛑
    
    - `service`: Batch processor telemetry is no longer emitted at "basic"
    verbosity level
    ([#&#8203;7890](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/7890))
    According to the guidelines, basic-level telemetry should be reserved
    for core Collector APIs.
    Components such as the batch processor should emit telemetry starting
    from the "normal" level
      (which is also the default level).
    
    Migration: If your Collector telemetry was set to `level: basic` and you
    want to keep seeing
    batch processor-related metrics, consider switching to `level: normal`
    instead.
    
    ##### 💡 Enhancements 💡
    
    - `service`: Add `service.AllowNoPipelines` feature gate to allow
    starting the Collector without pipelines.
    ([#&#8203;12613](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12613))
      This can be used to start with only extensions.
    
    - `mdatagen`: Delete generated\_status.go if the component type doesn't
    require it.
    ([#&#8203;12346](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12346))
    
    - `componenttest`: Improve config struct mapstructure field tag checks
    ([#&#8203;12590](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12590))
    `remain` tags and `omitempty` tags without a custom field name will now
    pass validation.
    
    - `service`: include component id/type in start error
    ([#&#8203;10426](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10426))
    
    - `mdatagen`: Add deprecation date and migration guide fields as part of
    component metadata
    ([#&#8203;12359](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12359))
    
    - `confmap`: Introduce a new feature flag to allow for merging lists
    instead of discarding the existing ones.
    ([#&#8203;8394](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/8394),
    [#&#8203;8754](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/8754),
    [#&#8203;10370](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/10370))
    You can enable this option via the command line by running following
    command:
    otelcol --config=main.yaml --config=extra\_config.yaml
    --feature-gates=-confmap.enableMergeAppendOption
    
    - `zpagesextension`: Add expvar handler to zpages extension.
    ([#&#8203;11081](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11081))
    
    ##### 🧰 Bug fixes 🧰
    
    - `confmap`: Maintain nil values when marshaling or unmarshaling nil
    slices
    ([#&#8203;11882](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11882))
    Previously, nil slices were converted to empty lists, which are
    semantically different
    than a nil slice. This change makes this conversion more consistent when
    encoding
      or decoding config, and these values are now maintained.
    
    - `service`: do not attempt to register process metrics if they are
    disabled
    ([#&#8203;12098](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12098))
    
    <!-- previous-version -->
    
    ###
    [`v1.27.0`](https://redirect.github.com/open-telemetry/opentelemetry-collector/blob/HEAD/CHANGELOG.md#v1270v01210)
    
    ##### 🛑 Breaking changes 🛑
    
    - `confighttp`: Make the client config options `max_idle_conns`,
    `max_idle_conns_per_host`, `max_conns_per_host`, and `idle_conn_timeout`
    integers
    ([#&#8203;9478](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9478))
    All four options can be set to `0` where they were previously set to
    `null`
    
    ##### 🚩 Deprecations 🚩
    
    - `exporterhelper`: Deprecate `min_size_items` and `max_size_items` in
    favor of `min_size` and `max_size`.
    ([#&#8203;12486](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12486))
    
    ##### 💡 Enhancements 💡
    
    - `mdatagen`: Add `converter` and `provider` module classes
    ([#&#8203;12467](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12467))
    
    - `pipeline`: output pipeline name with signal as signal\[/name] format
    in logs.
    ([#&#8203;12410](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12410))
    
    - `memorylimiter`: Add support to configure min GC intervals for soft
    and hard limits.
    ([#&#8203;12450](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12450))
    
    - `otlpexporter`: Update the stability level for logs, it has been as
    stable as traces and metrics for some time.
    ([#&#8203;12423](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12423))
    
    - `service`: Create a new subcommand to dump the initial configuration
    after resolving/merging.
    ([#&#8203;11479](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11479))
    To use the `print-initial-config` subcommand, invoke the Collector with
    the subcommand and corresponding feature gate: `otelcol
    print-initial-config --feature-gates=otelcol.printInitialConfig
    --config=config.yaml`.
    Note that the feature gate enabling this flag is currently in alpha
    stability, and the subcommand may
      be changed in the future.
    
    - `memorylimiterprocessor`: Add support for profiles.
    ([#&#8203;12453](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12453))
    
    - `otelcol`: Converters are now available in the `components` command.
    ([#&#8203;11900](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/11900),
    [#&#8203;12385](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12385))
    
    - `component`: Mark module as stable
    ([#&#8203;9376](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/9376))
    
    - `confmap`: Surface YAML parsing errors when they happen at the
    top-level.
    ([#&#8203;12180](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12180))
    This adds context to some instances of the error "retrieved value
    (type=string) cannot be used as a Conf", which typically happens because
    of invalid YAML documents
    
    - `pprofile`: Add LinkIndex attribute to the generated Sample type
    ([#&#8203;12485](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12485))
    
    - `exporterhelper`: Stabilize
    exporter.UsePullingBasedExporterQueueBatcher and remove old batch sender
    ([#&#8203;12425](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12425))
    
    - `mdatagen`: Update metadata schema with new fields without enforcing
    them
    ([#&#8203;12359](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12359))
    
    ##### 🧰 Bug fixes 🧰
    
    - `service`: Fix crash at startup when converting from v0.2.0 to v0.3.0
    ([#&#8203;12438](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12438))
    - `service`: fix bug in parsing service::telemetry configuration
    ([#&#8203;12437](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12437))
    - `exporterhelper`: Fix bug where the error logged when conversion of
    data fails is always nil
    ([#&#8203;12510](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12510))
    - `mdatagen`: Adds back missing import for filter when emitting resource
    attributes
    ([#&#8203;12455](https://redirect.github.com/open-telemetry/opentelemetry-collector/issues/12455))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MS4xNTkuNCIsInVwZGF0ZWRJblZlciI6IjQxLjE1OS40IiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmN5LW1ham9yLXVwZGF0ZSJdfQ==-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
