commit f990e99b690f05ca99f8eca9bf9070189f6edd6c
Author: Mostyn Bramley-Moore <mostyn@antipode.se>
Date:   Thu Jun 29 22:21:21 2023 +0200

    Upgrade github.com/mostynb/go-grpc-compression and switch to nonclobbering imports (#7966)
    
    **Description:** Switch to grpc encoders that won't override the
    consumer's previously registered codecs.
    
    Some consumers of this library have registered grpc compressors, and the
    init() order can cause their compressors to be clobbered by
    opentelemetry-collector's use of github.com/mostynb/go-grpc-compression,
    which follows the pattern from the grpc-go library (overwrite any
    previously registered encoders with the same name).
    
    Version 1.2.0 of github.com/mostynb/go-grpc-compression added so-called
    "nonclobbering" imports, which only register the codec if there is not
    already a codec registered with that name. This PR switches to use
    those.
    
    **Link to tracking Issue:** #7920
    
    **Testing:** tests have been added to the upstream library.
