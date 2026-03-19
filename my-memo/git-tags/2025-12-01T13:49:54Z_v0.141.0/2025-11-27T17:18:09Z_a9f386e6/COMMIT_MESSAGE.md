commit a9f386e61195149d6c500c0406a2f6c981caf431
Author: Shaunak Kashyap <ycombinator@gmail.com>
Date:   Thu Nov 27 09:18:09 2025 -0800

    [fips140][`configtls.TestTPM_loadCertificate`] Skip test if `GODEBUG=fips140=only` is set (#14225)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    When
    https://github.com/open-telemetry/opentelemetry-collector/pull/13926 is
    merged, all unit tests in this repository will be run with
    `GODEBUG=fips140=only` to help surface any FIPS-140 violations in all
    the Go modules in this repository.
    
    One such unit test that fails in these circumstances is
    `config/configtls.TestTPM_loadCertificate`. However, the FIPS violation
    surfaced by this test is from the test code itself (as opposed to from
    OpenTelemetry Collector core code that the test is exercising),
    specifically when this call is made:
    https://github.com/open-telemetry/opentelemetry-collector/blob/974da01f71487422c02fadadb8f66147162fcb14/config/configtls/tpm_test.go#L191
    
    As such, this is not a FIPS violation we need to worry about when
    running the OpenTelemetry Collector. To prevent the unit test from
    failing when it's run with `GODEBUG=fips140=only`, we skip it.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #13989
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Run the `configtls.TestTPM_loadCertificate` unit test with
    `GODEBUG=fips140=only`. Make sure OS is Linux and Go version is >=
    1.24.6.
       ```
       $ cd config/configtls/
    $ GODEBUG=fips140=only go test ./... -test.run TestTPM_loadCertificate
       ```
