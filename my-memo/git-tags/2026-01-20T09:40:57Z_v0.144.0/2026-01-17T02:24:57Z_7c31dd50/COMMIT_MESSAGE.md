commit 7c31dd50b306f9d58aa0b87abd674d20cb77bb44
Author: Jina Jain <jjain@splunk.com>
Date:   Fri Jan 16 18:24:57 2026 -0800

    [mdatagen] bug fix - reaggreagate_set test generation (#14441)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Fixes reaggregation test generation when metrics have attributes with
    `requirement_level: required`.
    
    1. **Config validation failure**: The generated `testdata/config.yaml`
    included `attributes: []` in the `reaggregate_set` section, but required
    attributes must always be present. This caused config validation to fail
    with an error like:
    ```
    error decoding 'metrics': attributes [required_string_attr] are required for metric reaggregate.metric.with_required
    ```
    **Fix**: Updated `config.yaml.tmpl` to use `requiredAttributes` helper
    to include required attributes in the `reaggregate_set` config instead
    of an empty array.
    
    2. **Test assertion failure**: The generated `metrics_test.go` used
    different values for required attributes across data points, preventing
    them from merging during reaggregation. The test expected 1 data point
    but received 2.
    
    **Fix** - Updated `metrics_test.go.tmpl` to use the same value for
    required attributes across both data points in reaggregation tests,
    allowing them to merge correctly while still testing that non-required
    attributes are dropped.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    - Added `required_string_attr` attribute and
    `reaggregate.metric.with_required` metric to
    `samplereceiver/metadata.yaml` to cover this scenario
    
    <!--Please delete paragraphs that you did not use before submitting.-->
