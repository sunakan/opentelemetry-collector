commit 82f253445acdefbb5d7a7d9c13d5be679811a28e
Author: Shaunak Kashyap <ycombinator@gmail.com>
Date:   Mon Nov 3 02:15:16 2025 -0800

    [fips140][`cmd/builder`] Unit tests: Add `GODEBUG=tlsmklem=0` if `GODEBUG=fips140=only` is set (#14068)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    When
    https://github.com/open-telemetry/opentelemetry-collector/pull/13926 is
    merged, all unit tests in this repository will be run with
    `GODEBUG=fips140=only` to help surface any FIPS-140 violations in all
    the Go modules in this repository.
    
    The `cmd/builder` module is not used when _running_ the OpenTelemetry
    Collector. It is a tool used to _build_ OpenTelemetry Collector
    distributions. As such, strictly speaking, we do not need to worry about
    FIPS-140 violations in this module.
    
    However, since unit tests for _all_ modules will be run with
    `GODEBUG=fips140=only`, it is convenient to address any FIPS-140
    violations in this module as well.
    
    The module is responsible for building OpenTelemetry Collector
    distributions from a configuration file. The configuration file lists Go
    modules which are then downloaded in order to compile the distribution.
    During the download, if `GODEBUG=fips140=only` is set, the following
    error will be thrown:
    
    ```
    crypto/ecdh: use of X25519 is not allowed in FIPS 140-only mode
    ```
    
    To suppress this error, we append `tlsmklem=0` to the `GODEBUG`
    environment variable. This is OK to do because a) we are only doing this
    from unit test code, not the module's code itself and b) as mentioned
    above, this particular module is not involved in the running of the
    OpenTelemetry Collector itself, i.e. we are not suppressing a legitimate
    FIPS violation in OpenTelemetry Collector code.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #13997
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Run the existing unit tests in the `cmd/builder` module with Go >=
    1.24.6 and `GODEBUG=fips140=only`.
    
    ```
    cd cmd/builder
    GODEBUG=fips140=only go test -v ./... -count 1
    ```
