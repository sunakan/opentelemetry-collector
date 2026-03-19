commit d193b03f47b51164dc1d4a56c0a970dee31da834
Author: Eyal Maderer <emaderer@splunk.com>
Date:   Fri Oct 1 03:09:28 2021 -0700

    Add version to the internal telemetry metrics (#4140)
    
    Added a version tag to the collector's own telemetry metrics because today when looking at those metrics there is no way to know the collector's version, this can also help to know what collector versions are running out there.
    I based the "flag" to control this on [PR 3816](https://github.com/open-telemetry/opentelemetry-collector/pull/3816)
