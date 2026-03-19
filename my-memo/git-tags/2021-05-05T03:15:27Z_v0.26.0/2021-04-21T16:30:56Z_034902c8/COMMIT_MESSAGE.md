commit 034902c8d6b06dc27b20e5d656e99d3cabcaefde
Author: Chris Reeves <hey@krak3n.io>
Date:   Wed Apr 21 17:30:56 2021 +0100

    Fix prometheusexporter droping the OTEL resource labels (#2899)
    
    * fix: add resource_attributes_as_tags support prometheusexporter
    
    * fix: prometheus exporter test cases
    
    * fix: yaml indentation
    
    * chore: add test case to ensure resource labels are added to prometheus output
    
    * fix: missing test case for exporterhelper.NewMetricsExporter error
    
    * refactor: use existing resource_to_telemetry_conversion convention from exporterhelper
