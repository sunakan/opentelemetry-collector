commit b125d052dba1ea7c0f5465d7ab0106997e9ef15d
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Oct 7 13:28:06 2019 -0400

    Add Start() function to Exporter interface (#380)
    
    This is done to have uniformness with Receivers and allow
    exporters to communicate with the host (Collector) in the
    future.
    
    Implements https://github.com/open-telemetry/opentelemetry-collector/issues/373
