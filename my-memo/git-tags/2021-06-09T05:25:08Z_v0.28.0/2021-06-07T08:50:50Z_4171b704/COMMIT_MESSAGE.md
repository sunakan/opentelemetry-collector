commit 4171b704ae29c6a8fa38c8825d18836983cda4fe
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Mon Jun 7 11:50:50 2021 +0300

    receiver/prometheus/internal: add createNodeAndResourcePdata for Prometheus->OTLP Pdata (#3139)
    
    * receiver/prometheus/internal: add createNodeAndResourcePdata for Prometheus->OTLP Pdata
    
    Starts the progressive effort to convert directly from
        Prometheus->OTLPPdata
    
    directly instead of
    
        Prometheus->OpenCensusProto->OTLPPdata
    
    by adding a converter for node+resource -> pdata.Resource.
    
    Updates #3137
    
    * Use .Attributes to skip unsafe extraction plus use require.Equal
    
    Addresses feedback pointed out by Bogdan, Tigran, Jaana
    by using Resource.Attributes().Sort() instead and also avoid
    using go-cmp/cmp and instead opt to using require.Equal.
    
    * Add comment and rename parity test check
    
    * Add createNodeAndResource unit test
