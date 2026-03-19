commit 398994224765c53b9856cdd2b5fb4ad692236752
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Oct 25 20:31:33 2021 -0400

    Make receiver data delivery guarantees explicit (#4262)
    
    Resolves https://github.com/open-telemetry/opentelemetry-collector/issues/4261
    
    We want to make this explicit and ensure all receivers follow this pattern.
    It is important for applications of the Collector where it is delivery guarantees are critical.
    
    The OTLP receiver correctly follows the guarantees. Other receivers may need to be audited
    to ensure compliance.
