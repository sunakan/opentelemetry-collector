commit 84f459372f80b7a8358ca6872876ce1adc571f44
Author: Christos Markou <chrismarkou92@gmail.com>
Date:   Wed Sep 10 17:44:01 2025 +0300

    Add stability level info on generated metrics' documentation (#13756)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR exposes the stability level of metrics to their generated
    documentation. This allows us for defining different stability levels
    for metrics that a components emits. In the future once a component is
    stable it should be able to introduce new metrics with lower stability
    levels for experimental/development reasons.
    
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/13297
    and
    https://github.com/open-telemetry/opentelemetry-collector/issues/11878.
    One prior attempt was
    https://github.com/open-telemetry/opentelemetry-collector/pull/5487.
    
    My proposal here is:
    1. expose the `stability` in the docs conditionally, (if it exists add
    it)
    2. (in follow-up PR) If no stability is defined add `development` by
    default
    3. (in follow-up PR) Update the Collector contrib components using the
    above
    4. (in follow-up PR) Consider making the stability a required attribute
    in the metadata-schema
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/13748
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Tuned
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    Sample generated documentation:
    
    | Unit | Metric Type | Value Type | Monotonic | Stability |
    | ---- | ----------- | ---------- | --------- | --------- |
    | By | Sum | Int | true | stable |
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    Signed-off-by: ChrsMark <chrismarkou92@gmail.com>
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
