commit a0331ed86cf8f90316268d34e7e82550084c36ae
Author: Kristina Pathak <kristina.m.pathak@gmail.com>
Date:   Thu Aug 22 01:52:55 2024 -0700

    [builder] Support for --skip-new-go-module (#10098)
    
    A continuation of
    https://github.com/open-telemetry/opentelemetry-collector/pull/9253 and
    https://github.com/open-telemetry/opentelemetry-collector/pull/9631
    
    Description: Adds a `--skip-new-go-module` flag to the OTC builder. This
    enables users working in an existing go module environment (say, a
    "monorepo") to update the module they have, vs forcing the use of a new
    module.
    
    With the new support inside an existing Go module, a collector main
    package can be generated using a go:generate directive. For example, in
    the directory where I want my collector built, the file generate.go has
    this line:
    
    //go:generate builder --skip-new-go-module --skip-compilation
    --strict-versioning --config=./build-config.yaml
    In the same directory, the build-config.yaml describes the collector to
    build. The builder generates the other files in the same directory. At
    this point, normal Go workflows can be used to update indirect
    dependencies.
    
    Link to tracking Issue:
    https://github.com/open-telemetry/opentelemetry-collector/issues/9252
    
    Testing: Will add unit tests in the next few days.
    
    Documentation: Yes.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
