commit a2857849ae803e813d021139ef305cfbf4898f9e
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Mar 5 10:29:29 2020 -0500

    Include resource labels in Zipkin export (#591)
    
    Resource data might include various labels that are currently missed when doing conversion. It seems to be a current limitation of the design: https://github.com/open-telemetry/opentelemetry-specification/blob/master/specification/exporter-zipkin.md
    
    This change adds this capability, simple merging resource labels with span attributes
    
    Testing: Unit Tests + Manual tests on interoperability with K8S metadata tagging
    
    Documentation: Relevant project documentation updated
