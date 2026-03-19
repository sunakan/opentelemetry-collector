commit 2125fe89d40b1ce723c5f76891ddbeceea4c0f79
Author: Curtis Robert <crobert@splunk.com>
Date:   Mon Jul 29 17:13:54 2024 -0700

    [chore][samplereceiver] Update internal telemetry metric units (#10672)
    
    #### Description
    Update telemetry units to be more clear. Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/10658, we
    may be blocked here waiting for official units to use.
    
    Note: I've kept [one
    metric](https://github.com/open-telemetry/opentelemetry-collector/blob/7d5b1ba387e4e171e25bfeea9b70d6fdfbe08fab/cmd/mdatagen/internal/samplereceiver/metadata.yaml#L110)
    with the unit "1", as it's not meant to be meaningful, just to show a
    metric that's disabled by default.
    
    Since this code is internal and only used for tests, from what I can
    tell, I don't believe we need a changelog entry.
    
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10653
