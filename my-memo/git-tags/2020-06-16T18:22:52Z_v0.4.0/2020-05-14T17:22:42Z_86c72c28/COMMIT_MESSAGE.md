commit 86c72c282d3813f4a404f18145a57e6dda1537af
Author: Steve Flanders <steve@omnition.io>
Date:   Thu May 14 13:22:42 2020 -0400

    Update k8s demo (#968)
    
    * Update k8s demo
    
    Replace opencensus receiver/exporter with opentelemetry. Also various
    cleanup items:
    
    * Enable memory_limiter processor
    * Enable health_check extension
    * Remove non-standard/required annotations and env
    
    * Address feedback
