commit 8721e3beaf1c449d88c2f6f78517cd03d6b2c7f3
Author: Paulo Janotti <paulo@omnition.io>
Date:   Mon Jul 15 15:10:13 2019 -0700

    Change Zipkin receiver behavior according to host ingestion status (#148)
    
    * Make Zipkin receiver respond to host ingestion status
    
    This change makes the Zipkin receiver respond to received data according to the host status regarding ingestion.
    
    * Nit cleanup
    
    * Use better type to handle back pressure setting
