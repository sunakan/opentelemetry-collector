commit 3218d8a33d478551936eaff4259143f14fafd027
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Aug 3 13:52:45 2021 +0400

    Change default OTLP/HTTP port number (#3743)
    
    This implements specification change https://github.com/open-telemetry/opentelemetry-specification/pull/1839
    
    To make transition to new port numbers less painful OTLP receiver will
    also accept data on the legacy port numbers when it is configured to
    use the default endpoint. Users who use the default Collector config
    can continue sending data to the legacy ports and have a graceful period
    to update their senders to start sending to the new ports.
