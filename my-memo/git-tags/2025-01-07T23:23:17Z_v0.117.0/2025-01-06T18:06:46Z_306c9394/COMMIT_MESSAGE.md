commit 306c9394155cf362cca37b28e55648a041a15dca
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Jan 6 10:06:46 2025 -0800

    Deprecate component_test in favor of metadatatest (#11812)
    
    The main idea behind this is that the test helpers were generated in the
    main package, hard to find and understand and also impossible to use
    outside the main package, see the
    [service/internal/proctelemetry/process_telemetry_test.go](https://github.com/open-telemetry/opentelemetry-collector/compare/main...bogdandrutu:opentelemetry-collector:dep-comp-test?expand=1#diff-ed642eb1c968a9308a07e87292f77af1e0830a7af2d87111c5abacde4fc87446).
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
