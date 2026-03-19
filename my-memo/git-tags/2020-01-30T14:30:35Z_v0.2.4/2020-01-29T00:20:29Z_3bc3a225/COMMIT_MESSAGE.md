commit 3bc3a2256264e9dd7d87bd4af25052fd8d334e14
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Jan 28 16:20:29 2020 -0800

    Add file exporter (#521)
    
    This exporter is very useful for debugging receivers and processors.
    It allows to export the pipeline data to a JSON file and examine as needed.
    The data is written in OpenCensus Protobuf JSON encoding
    (https://developers.google.com/protocol-buffers/docs/proto3#json).
