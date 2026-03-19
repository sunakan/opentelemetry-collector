commit a331a4c8cf3e69cc5ff96c75244c91e55dd21643
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Sun Jan 4 18:53:37 2026 +0100

    Optimize the size and pointer bytes for pdata structs (#14339)
    
    There are 2 things that matters for structs:
    1. The overall size - which to ensure minimum size we need to ensure
    fields are sorted by their alignment (not necessary size).
    2. The pointer bytes - how many bytes of the object that the GC has to
    potentially scan for pointers. pointers and struct with pointers should
    be first.
    
    We could probably modify the generator to do this, but it is simpler to
    run a tool like `betteralign`.
    
    Field alignment is important for pdata structs because these are on the
    data path and they are generated for each message we process.
    
    ```
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_exemplar.go:52:15: 24 bytes saved: struct with 48 pointer bytes could be 24
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_exponentialhistogramdatapoint.go:77:36: 8 bytes saved: struct of size 216 could be 208
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_exponentialhistogramdatapointbuckets.go:18:43: 8 bytes saved: struct with 16 pointer bytes could be 8
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_exportlogspartialsuccess.go:18:31: 8 bytes saved: struct with 16 pointer bytes could be 8
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_exportmetricspartialsuccess.go:18:34: 8 bytes saved: struct with 16 pointer bytes could be 8
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_exportprofilespartialsuccess.go:18:35: 8 bytes saved: struct with 16 pointer bytes could be 8
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_exporttracepartialsuccess.go:18:32: 8 bytes saved: struct with 16 pointer bytes could be 8
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_histogramdatapoint.go:74:25: 48 bytes saved: struct with 176 pointer bytes could be 128
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_ipaddr.go:17:13: 8 bytes saved: struct with 32 pointer bytes could be 24
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_keyvalue.go:17:15: 8 bytes saved: struct with 32 pointer bytes could be 24
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_keyvalueandunit.go:20:22: 8 bytes saved: struct of size 32 could be 24
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_location.go:18:15: 16 bytes saved: struct with 48 pointer bytes could be 32
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_logrecord.go:20:16: 64 bytes saved: struct with 120 pointer bytes could be 56
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_mapping.go:18:14: 32 bytes saved: struct with 40 pointer bytes could be 8
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_numberdatapoint.go:49:22: 16 bytes saved: struct with 64 pointer bytes could be 48
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_profile.go:20:14: 64 bytes saved: struct with 136 pointer bytes could be 72
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_requestcontext.go:68:21: 16 bytes saved: struct with 48 pointer bytes could be 32
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_resource.go:18:15: 8 bytes saved: struct with 40 pointer bytes could be 32
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_resourceprofiles.go:18:23: 8 bytes saved: struct with 88 pointer bytes could be 80
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_sample.go:19:13: 8 bytes saved: struct of size 88 could be 80
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_scopelogs.go:18:16: 16 bytes saved: struct with 96 pointer bytes could be 80
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_scopemetrics.go:18:19: 16 bytes saved: struct with 96 pointer bytes could be 80
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_scopeprofiles.go:18:20: 16 bytes saved: struct with 96 pointer bytes could be 80
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_scopespans.go:18:17: 16 bytes saved: struct with 96 pointer bytes could be 80
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_span.go:20:11: 16 bytes saved: struct of size 216 could be 200
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_spancontext.go:18:18: 8 bytes saved: struct of size 56 could be 48
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_spanevent.go:20:16: 8 bytes saved: struct with 32 pointer bytes could be 24
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_spanlink.go:21:15: 24 bytes saved: struct with 48 pointer bytes could be 24
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_summarydatapoint.go:20:23: 32 bytes saved: struct with 64 pointer bytes could be 32
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_tcpaddr.go:17:14: 16 bytes saved: struct with 40 pointer bytes could be 24
    /Users/bdrutu/github/opentelemetry-collector/pdata/internal/generated_proto_udpaddr.go:17:14: 16 bytes saved: struct with 40 pointer bytes could be 24
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
