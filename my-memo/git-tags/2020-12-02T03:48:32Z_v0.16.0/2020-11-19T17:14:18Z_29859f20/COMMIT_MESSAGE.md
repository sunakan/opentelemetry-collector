commit 29859f2053f789098401b1e21d218327b530b4da
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Nov 19 12:14:18 2020 -0500

    Change default OTLP/gRPC port number (#2104)
    
    This implements specification change https://github.com/open-telemetry/opentelemetry-specification/pull/1221
    
    To make transition to new port numbers less painful OTLP receiver will
    also accept data on the legacy port numbers when it is configured to
    use the default endpoint. Users who use the default Collector config
    can continue sending data to the legacy ports and have a graceful period
    to update their senders to start sending to the new ports.
    
    Note that OTLP/HTTP continues using a separate port number from OTLP/gRPC.
    There is separate work in progress to use one port for both.
