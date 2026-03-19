commit 7ffd1de8644429b1e8bb745ea4632816160e4604
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Sep 28 16:07:31 2020 -0400

    Extract bytesID as a separate type (#1854)
    
    In preparation to SpanID type that is very similar to TraceID
    I extracted bytesID as a separate that implements the common
    functionality.
    
    Contribytes to https://github.com/open-telemetry/opentelemetry-collector/issues/1177
