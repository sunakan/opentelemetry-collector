commit f360e4ca4d15636a3f8e35bc118ace55ce68676d
Author: Joshua MacDonald <jmacd@users.noreply.github.com>
Date:   Tue Feb 20 14:55:32 2024 -0800

    Update to OTLP 1.1, regenerate protos and pdata (#9588)
    
    **Description:** Updates to OTLP 1.1, published in January 2024. Updates
    the `otel/build-protobuf` Docker image to the current release label.
    
    User-visible protocol changes: Adds Span flags and SpanLink flags.
    
    **Link to tracking Issue:**
    Fixes #9587
    Fixes #9550
    
    **Testing:** `make test`
    
    **Documentation:** Could not find any documentation on this process,
    added some in CONTRIBUTING.md.
