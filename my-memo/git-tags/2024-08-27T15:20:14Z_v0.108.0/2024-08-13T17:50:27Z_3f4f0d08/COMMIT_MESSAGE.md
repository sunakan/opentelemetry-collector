commit 3f4f0d082de27a563cfe75b087bd9474fa83c1ec
Author: Curtis Robert <crobert@splunk.com>
Date:   Tue Aug 13 10:50:27 2024 -0700

    [batchprocessor] Update metric units (#10658)
    
    #### Description
    `1` isn't an informative metric unit. I've made a best-guess attempt at
    updating metric units, f**eedback is very necessary here**, the units
    are not very clear here. I attempted to match the unit with metric
    descriptions.
    
    [Semantic conventions for
    reference](https://opentelemetry.io/docs/specs/semconv/general/metrics/).
    
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10652
