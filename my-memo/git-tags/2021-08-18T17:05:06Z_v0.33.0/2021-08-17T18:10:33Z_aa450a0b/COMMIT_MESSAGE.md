commit aa450a0bf282e144bbb83f55ce9088e5720aa052
Author: Nathan Dias <kirbyquerby@users.noreply.github.com>
Date:   Tue Aug 17 13:10:33 2021 -0500

    all: remove OtlpProtoSize in favor of Sizer interface (#3818)
    
    * all: remove OtlpProtoSize in favor of Sizer interface
    
    * add {Metrics|Traces|Logs}Sizer, fix test commenting
    
    * move size tests to pb_test, fix metrics+logs parameter names
    
    * uncommented batch_processor tests + adjusted them to use *Sizer
    
    * I forgot BenchmarkTraceSizeBytes :(
    
    * Add docs for NewProtobof*Sizer + update docs for NewProtobuf*Marshaler
    
    * cast *Marshaler to *Sizer for now
    
    * add casts to batch_processor_test
