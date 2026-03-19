commit c7e9b68f84bbe5ed9082f8d62c4b54c56dc3397a
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Mon Mar 22 18:11:18 2021 -0700

    Ensure Zipkin shutdown correctness (#2765)
    
    * Fix Zipkin shutdown
    
    * Fix zipkin shutdown
    
    * Remove nil check for http Serve on OC and OTLP
    
    * Switch from channel to WaitGroup for Zipkin shutdown
