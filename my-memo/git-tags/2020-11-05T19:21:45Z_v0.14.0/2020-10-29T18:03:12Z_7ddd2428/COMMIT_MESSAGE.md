commit 7ddd2428e51e3b541b0a18d66f7acfb13bc21af2
Author: Aman Brar <aman.brar1999@outlook.com>
Date:   Thu Oct 29 14:03:12 2020 -0400

    Add user agent header to outgoing prometheus remote write exporter http request (#2000)
    
    Added User-Agent header to Prometheus Remote Write Exporter's outgoing http request. This allows endpoints to identify whether an incoming metric has come from an OTel Collector instance.
    
    **Testing:**
    Unit tests added conforming with existing tests to check headers.
    
    **Documentation:**
    No documentation has been added as it is for internal usage rather than customer usage.
    
    Note: I am assuming here that the `VERSION` variable in the makefile will be set when we reach GA, as currently it is not and the version in the version package is just the default value of "latest"
