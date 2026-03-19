commit 85fc1918516c6c0a272ff5781b2e269085ba5305
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Mon Mar 9 08:30:54 2026 -0700

    [cmd/mdatagen] Generate per-metric config types with typed attributes (#14724)
    
    When `reaggregation_enabled: true`, instead of a shared `MetricConfig`
    for all metrics, each metric now gets its own generated
    `<MetricName>Config` type containing only the fields relevant to it:
    
    - All metrics: Enabled
    - Metrics with aggregatable attributes: additionally
    `AggregationStrategy` and `EnabledAttributes []<MetricName>AttributeKey`
    
    EnabledAttributes is typed as `[]<MetricName>AttributeKey` rather than
    `[]string`, with a generated enum constant per attribute (e.g.
    DefaultMetricAttributeKeyStringAttr). This makes the API type-safe and
    self-documenting, and eliminates the runtime
    definedAttributes/requiredAttributes slice allocations that were
    previously needed for validation. This also improves the generated json
    schema by adding all the constraints to every metric in the config
    section.
    
    `Validate()` is generated per-metric with the valid attribute set and
    required attributes hardcoded, producing descriptive errors:
    - metric default.metric doesn't have an attribute X, valid attributes:
    [...]
    - required_string_attr is a required attribute for
    reaggregate.metric.with_required metric and must be included
    - invalid aggregation strategy "X", valid strategies: [sum, avg, min,
    max]
    
    The new generated code brings a breaking change: components using
    `reaggregation_enabled: true` will need to update references from
    MetricConfig to their per-metric <MetricName>Config type. There is no
    impact on the generated telemetry. However, it also removes useless
    configuration options from the end-user interface
    (`aggregation_strategy` and `attributes`) for the metrics that don't
    have any attributes.
    
    Given that adoption of the reaggreagtion feature is not that wide (only
    5 receivers were released in contrib with that feature), I think it's
    fine to proceed with generating the breaking change API.
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
