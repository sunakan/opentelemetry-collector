commit 4056e79363f4986de6e05a3c5949bd3ef065c3fe
Author: Jason Liu <liujasn@amazon.com>
Date:   Mon Nov 9 06:11:12 2020 -0800

    Implement Summary Metric in Prometheus RemoteWrite Exporter (#2083)
    
    * Add summary metric to exported datapoints
    
    * Add tests
    
    * Add external labels to summary metric
    
    * Remove unrelated changes
