commit bb900698936174142e0ed0b9006970d66ca9bf24
Author: Curtis Robert <crobert@splunk.com>
Date:   Mon Jan 8 15:52:43 2024 -0800

    [chore][cmd/mdatagen] Properly test bytes attribute type (#9229)
    
    **Description:** <Describe what has changed.>
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    As described in the [issue opened in the contrib
    repository](https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/29923),
    mdatagen was originally generating tests for byte arrays incorrectly.
    This tests byte arrays in their proper format.
    
    As
    [requested](https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/30106#issuecomment-1879321401),
    this ports the [contrib fix
    ](https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/30106
    )into core.
    
    **Link to tracking Issue:** <Issue number if applicable>
    
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/29923
    
    **Testing:** <Describe what testing was performed and which tests were
    added.>
    I added a fake attribute and fake metric that used it, then generated
    tests.
    Fake attribute and metric:
    ```
    attributes:
      # Added a fake attribute in a metadata.yaml file
      fake:
        description: "Fake attribute for testing"
        type: bytes
    
    metrics:
      container.cpu.usage.percpu:
        enabled: false
        description: "Per-core CPU usage by the container (Only available with cgroups v1)."
        unit: ns
        sum:
          value_type: int
          monotonic: true
          aggregation_temporality: cumulative
        attributes:
          - fake
    ```
    Generated tests:
    ```
    // First test reference:
                            mb.RecordContainerCPUUsagePercpuDataPoint(ts, 1, []byte("fake-val"))
    // Second test reference:
                                            attrVal, ok := dp.Attributes().Get("fake")
                                            assert.True(t, ok)
                                            assert.EqualValues(t, []byte("fake-val"), attrVal.Bytes())
    ```
