commit 14618bd94bbc037c7b954c74b3d2e9b40dd743e0
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Oct 27 18:40:09 2020 -0400

    Add correct handling of server error responses in OTLP/HTTP exporter (#2016)
    
    This implements the response behavior according to the spec:
    https://github.com/open-telemetry/opentelemetry-specification/blob/master/specification/protocol/otlp.md#response-1
