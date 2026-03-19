commit dfabfb0c1d1e9e64c5105fabd6754f06a7302e99
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Oct 16 18:48:15 2019 -0400

    Print version number and git commit on startup in the logs (#393)
    
    This is useful for debugging and troubleshooting. The information is
    possible to override in custom builds.
    
    Implements https://github.com/open-telemetry/opentelemetry-collector/issues/392
