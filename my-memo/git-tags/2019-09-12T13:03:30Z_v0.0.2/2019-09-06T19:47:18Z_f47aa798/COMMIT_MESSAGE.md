commit f47aa798e8453e6628ec559f5d589fff2a7630dd
Author: Jonah Back <jonah@jonahback.com>
Date:   Fri Sep 6 12:47:18 2019 -0700

    Add common configuration for receiver tls (#288)
    
    * Create a common configuration for receivers to use when providing TLS. Use this common configuration in the OpenCensus and Jaeger gRPC receivers.
    
    * Add test for building gRPC option. Update README to specify how to configure TLS.
    
    * Move TLS path checking to receiver initialization instead of start. Update jaeger receiver readme with instructions on using TLS with gRPC.
    
    Signed-off-by: Jonah Back <jonah@jonahback.com>
