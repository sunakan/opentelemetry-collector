commit b9dc8ec8a380614abdae330598e64e3dc90eebac
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Mon Mar 16 06:41:02 2020 -0700

    Update processor metrics to obsreport (#606)
    
    Initial updates to migrate processor metrics to obsreport package, ie.: the new metrics.
    
    Cleaned-up a bit some of the processor metrics and spelled out the rule names for new metrics.
    
    Related to https://github.com/open-telemetry/opentelemetry-collector/issues/141
    
    Testing: Added test for the processor common metrics, validated manually that legacy metrics were still working
