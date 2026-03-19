commit 10bbaf877b62d8b1f9f218070970f27da12c5347
Author: Dhruv Vora <32409412+dhruv-vora@users.noreply.github.com>
Date:   Thu May 13 17:02:48 2021 -0700

    Add Collector version to Prometheus Remote Write Exporter user-agent header (#3094)
    
    * Add collector version to prometheus remote write exporter user agent
    
    * Add collector version to prometheus remote write exporter user agent
    
    * refined user-agent header and tests
    
    * pre-computed user-agent and updated functions
    
    * removed startInfo from PrwExporter struct
    
    * removed usage of GitHash
    
    * Add collector version to prometheus remote write exporter user agent
    
    * Add collector version to prometheus remote write exporter user agent
    
    * refined user-agent header and tests
    
    * pre-computed user-agent and updated functions
    
    * removed startInfo from PrwExporter struct
    
    * removed usage of GitHash
    
    * updated to use BuildInfo and LongName
    
    * renamed variables to use new convention
    
    * removed X-Prometheus-Remote-Write-Version/0.1.0 from User-Agent header
    
    Co-authored-by: Anthony J Mirabella <a9@aneurysm9.com>
