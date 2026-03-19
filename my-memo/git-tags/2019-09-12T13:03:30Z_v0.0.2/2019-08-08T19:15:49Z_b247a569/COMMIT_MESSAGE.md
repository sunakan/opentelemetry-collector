commit b247a56930dd50fc34864a6aff70711cf78d9005
Author: Constance Caramanolis <c.caramanolis@gmail.com>
Date:   Thu Aug 8 12:15:49 2019 -0700

    Clean up unused code in service/builder from port of OC Svc. (#249)
    
    Service/Builder used to contain the various implementation for configuration parsing, processors and other components. This logic was taken from OC Svc. Most of those features have been ported in OtelSvc to different parts of the code base or are no longer applicable.
    
    What was changed:
    
    Most test configs under service/builder/testdata weren't referenced in the code base and did not detail any specific use case. These have been deleted.
    
    processor_builder.go used to parse several features
    Queued Processors for Jaeger
    -> This feature has been separated. The Queued Processor no longer has logic that explicitly ties it to Jaeger. There is Jaeger exporter now too. These can be used together in a pipeline.
    Global Processor is no longer a feature.
    MultiSpanProcessor is no longer a feature.
    
    builder_test.go is deleted because it only tested the loading of configuration for Queued Processor. That is covered in the config_test.go
    
    processor_builder_test.go is deleted because it tests the configuration loading of the global attributes processor. However, this isn't a supported feature.
    
    Tested: Ran tests and they passed.
