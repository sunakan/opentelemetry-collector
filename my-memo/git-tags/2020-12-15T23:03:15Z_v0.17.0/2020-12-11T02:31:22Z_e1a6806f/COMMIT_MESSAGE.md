commit e1a6806fe796b5f96a7f7b3e2356d720382a15c0
Author: Jason Liu <liujasn@amazon.com>
Date:   Thu Dec 10 18:31:22 2020 -0800

    Add batched exports to the Prometheus Remote Write Exporter  (#2249)
    
    Currently, there is no limit on the size of the remote_write export request to a Cortex instance. This could create problems if one Prometheus scrape produces an extreme amount of timeseries metrics.
    
    This PR creates a batch of concurrent requests where the max size of a request is 3MB and the max number of timeseries per request is 40,000.
    
    A future PR will tackle making the max size of each request configurable.
    
    **Testing:**
    
    * Unit tests were fixed
    * Performance tests were done with 15000 Prometheus metrics (around 100k timeseries) per scrape. The first and last metric of each Prometheus metric type were all found.
