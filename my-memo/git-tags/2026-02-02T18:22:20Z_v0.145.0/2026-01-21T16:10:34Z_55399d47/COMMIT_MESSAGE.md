commit 55399d4743af394a6123a1670ed13ce71bf44469
Author: Théo de Magalhaes <theo.demagalhaes@datadoghq.com>
Date:   Wed Jan 21 17:10:34 2026 +0100

    fix(confmap): Include parent package in e2e test coverage (#14439)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    The e2e test module was not recording coverage for the parent
    `confmap/internal` package that it tests. This caused test coverage to
    appear as 0% even though the tests exercise the code.
    
    This adds the parent package to `COVER_PKGS` so coverage of
    `confmap/internal` is properly tracked for e2e tests.
    When looking at overall coverage of `confmap/internal/decoder.go`, it
    goes from 91.4% to 96.3% of statements.
    #### Link to tracking issue
    
    Issue was found in PR
    https://github.com/open-telemetry/opentelemetry-collector/pull/14413#pullrequestreview-3670511027.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Running `make gotest-with-cover` without the fix, then looking at
    coverage in percentage with
    ```bash
    go tool covdata percent -i=./coverage/unit -pkg=go.opentelemetry.io/collector/confmap/internal
    ```
    Running these commands again with the fix added shows the improvement.
    
    The e2e tests can also be run individually to verify they're tracking
    parent package coverage:
    ```bash
    make -C confmap/internal/e2e test-with-cover
    # [...] coverage: 45.3% of statements in go.opentelemetry.io/collector/confmap/internal, go.opentelemetry.io/collector/confmap/internal/e2e, )
    ```
    <!--Describe the documentation added.-->
