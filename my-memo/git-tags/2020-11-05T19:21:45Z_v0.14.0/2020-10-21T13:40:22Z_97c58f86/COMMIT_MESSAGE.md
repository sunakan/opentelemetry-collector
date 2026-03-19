commit 97c58f860838f1a6e2d1680bdaed1bd5bea898f1
Author: Jason Koch <jasonk@bluedevel.com>
Date:   Wed Oct 21 06:40:22 2020 -0700

    Add send_timestamps option to Prometheus Exporter. (#1951)
    
    Adds a `send_timestamps` option to the prometheus exporter to allow it to send scrape timestamps.
    
    By default, when scraping, Prometheus records data assuming that the presented sample is at the instant of the scrape. For data sources that cache the underlying information and do not refresh on scrape, this can lead to metric samples being recorded at the wrong timestamp. For ex, cadvisor caches for many seconds (4-20 in our experience), and so a sample taken "now" may actually be a sample from 20s ago.
    
    To handle this situation, the exposition format allows an exporter to advise the Prometheus server of the timestamp of the underlying scrape. OpenTelemetry is aware of the timestamp of the scrape.
    
    This change adds an option to have OpenTelemetry send the timestamps of underlying samples out with the Prometheus exporter.
    
    Visually, the image shows existing behavior prior to 9.45am and with `send_timestamps: true` set from 9.45am onwards. This is metrics for a job using a single CPU.
    ![image](https://user-images.githubusercontent.com/3196528/95892425-62fe5a00-0d3b-11eb-9023-af8e59652157.png)
    
    **Related issues:**
    https://github.com/google/cadvisor/issues/2526
    https://github.com/orijtech/prometheus-go-metrics-exporter/pull/11
    
    **Testing:**
    Test cases have been added. In addition, for e2e test, see screenshot from our environment above.
    
    **Documentation:**
    The `prometheusexporter` README has been updated.
