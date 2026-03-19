commit 3b5e790f4062aaa1a3ebb9468652fa741457c84a
Author: Christos Markou <chrismarkou92@gmail.com>
Date:   Fri Nov 7 13:35:20 2025 +0200

    [mdatagen] Add semconv reference for metrics in metadata schema (#13920)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR adds support in mdatagen for defining SemConv reference for
    metrics.
    
    Enhancing your metrics/signals in `metadata.yaml` like bellow:
    
    ```yaml
    metrics:
      system.cpu.time:
        enabled: true
        stability:
          level: beta
        description: Monotonic cumulative sum int metric enabled by default.
        unit: s
        sum:
          value_type: int
          monotonic: true
          aggregation_temporality: cumulative
        semantic_convention:
          semconv_ref: https://github.com/open-telemetry/semantic-conventions/blob/v1.37.0/docs/system/system-metrics.md#metric-systemcputime
    ```
    
    Will provide the following generated docs:
    
    ### system.cpu.time
    
    Monotonic cumulative sum int metric enabled by default.
    
    | Unit | Metric Type | Value Type | Aggregation Temporality | Monotonic
    | Stability | Semantic Convention |
    | ---- | ----------- | ---------- | ----------------------- | ---------
    | --------- | ------------------- |
    | s | Sum | Int | Cumulative | true | beta |
    [system.cpu.time](https://github.com/open-telemetry/semantic-conventions/blob/v1.37.0/docs/system/system-metrics.md#metric-systemcputime)
    |
    
    Validation is added so as to ensure that provided SemConv urls match the
    top_level semconv version as well as the metric's name.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/13910
    and
    https://github.com/open-telemetry/opentelemetry-collector/issues/13297.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Tuned
    
    <!--Describe the documentation added.-->
    #### Documentation
    Tuned
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Signed-off-by: ChrsMark <chrismarkou92@gmail.com>
