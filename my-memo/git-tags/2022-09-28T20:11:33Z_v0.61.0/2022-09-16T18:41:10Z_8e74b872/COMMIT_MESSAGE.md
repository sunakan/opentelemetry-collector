commit 8e74b872cea198cb8ab06781025708d5b85c2e1d
Author: Foad Nosrati Habibi <foad.nh@gmail.com>
Date:   Sat Sep 17 04:41:10 2022 +1000

    Add log severity number to logging exporter (#6101)
    
    * Add log severity number to logging exporter
    
    Add severity number in logging exporter for logs. Requested in #6057.
    Both numeric and text presentations added.
    If unspecified it will show: `SeverityNumber: 0 SEVERITY_NUMBER_UNSPECIFIED`
    
    * Update exporter/loggingexporter/internal/otlptext/logs.go
    
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
