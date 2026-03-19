commit d9352db596a5022ac75dd8e9fed56624a22496ee
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Jan 30 09:30:35 2020 -0500

    Add support for CONSUMER and PRODUCER span kinds (#520)
    
    Previously these span kinds were not supported because OpenCensus
    does not have equivalent span kinds and they were translated as
    "Unspecified" span kind when received by Zipkin receiver.
    
    Now these span kinds are internally stored in a span attribute
    named "span.kind" when received by Zipkin receiver. When exporting,
    this attribute is used to perform a reverse translation in Zipkin
    exporter. "span.kind" also matches the OpenTracing semantic
    conventions so it should be correctly interpreted by any backend
    that follows this convention.
    
    ## To reviewers:
    The code that does translation from OC to Zipkin is moved from
    exporter/zipkinexporter/zipkin.go to translator/trace/zipkin/protospan_to_zipkinv1.go.
    protospan_to_zipkinv1.go is not all new code, only the code that
    deals with span kind is to be reviewed.
    
    Testing done:
    - Added a unit test to verify translations between Zipkin,OC and Jaeger.
    - TODO: Add E2E test to verify these translations on real pipelines.
