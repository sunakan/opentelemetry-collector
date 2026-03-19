commit c08dbf5b2b48257a24747676327eae50affea403
Author: Shaunak Kashyap <ycombinator@gmail.com>
Date:   Mon Nov 10 02:52:11 2025 -0800

    [fips140][`configurablehttpprovider.TestFunctionalityDownloadFileHTTPS`] Skip test if `GODEBUG=fips140=only` is set (#14076)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    When
    https://github.com/open-telemetry/opentelemetry-collector/pull/13926 is
    merged, all unit tests in this repository will be run with
    `GODEBUG=fips140=only` to help surface any FIPS-140 violations in all
    the Go modules in this repository.
    
    One such unit test that fails in these circumstances is
    `confmap/provider/internal/configurablehttpprovider.TestFunctionalityDownloadFileHTTPS`.
    However, the FIPS violation surfaced by this test is from the test code
    itself (as opposed to from OpenTelemetry Collector core code that the
    test is exercising), specifically when this call is made:
    https://github.com/open-telemetry/opentelemetry-collector/blob/0f3b0c974e235da85282c6d6ff5734e55e8f4fbc/confmap/provider/internal/configurablehttpprovider/provider_test.go#L81
    
    As such, this is not a FIPS violation we need to worry about when
    running the OpenTelemetry Collector. To prevent the unit test from
    failing when it's run with `GODEBUG=fips140=only`, we skip it.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #13998
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Run the `configurablehttpprovider.TestFunctionalityDownloadFileHTTPS`
    unit test with `GODEBUG=fips140=only`.
       ```
       $ cd confmap/
    $ GODEBUG=fips140=only go test
    ./provider/internal/configurablehttpprovider/... -test.v -test.run
    TestFunctionalityDownloadFileHTTPS -count 1
       ```
