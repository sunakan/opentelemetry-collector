commit 26461395aad724b3b9cc23718e639ccf404fe929
Author: Shaunak Kashyap <ycombinator@gmail.com>
Date:   Mon Oct 20 16:28:21 2025 -0700

    [fips] Add FIPS and non-FIPS implementations for allowed TLS curves (#13992)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR introduces a new Go build tag, `requirefips`, that can be used
    (in the future) to build a FIPS-capable distribution of the OTel
    Collector. This PR uses this new build tag to create FIPS (`//go:build
    requirefips`) and non-FIPS (`//go:build !requirefips`) implementations
    of allowed TLS curves. The FIPS implementation contains all the TLS
    curves as the non-FIPS implementation except `X25519` and
    `X25519MLKEM768`.
    
    If these two curves were included in the FIPS distribution, running it
    with Golang >=1.24.6 and `GODEBUG=fips140=only` to surface
    non-FIPS-compliant algorithm uses will result in errors like so:
    
    ```
    crypto/ecdh: use of X25519 is not allowed in FIPS 140-only mode
    ```
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #13990
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Run the existing `confighttp.TestHttpReception` unit test with Go >=
    1.24.6 and `GODEBUG=fips140=only` to surface non-FIPS-compliant
    algorithm uses.
    
    ##### Without the `requirefips` build tag
    
    ```
    $ go version
    go version go1.25.1 darwin/arm64
    $ GODEBUG=fips140=only go test ./... -test.v -test.run TestHttpReception -count 1
    === RUN   TestHttpReception
    === RUN   TestHttpReception/noTLS
    === RUN   TestHttpReception/TLS
        server_test.go:267:
                    Error Trace:    /Users/shaunak/development/github/opentelemetry-collector/config/confighttp/server_test.go:267
                    Error:          Received unexpected error:
                                    Get "https://127.0.0.1:64822": crypto/ecdh: use of X25519 is not allowed in FIPS 140-only mode
                    Test:           TestHttpReception/TLS
    === RUN   TestHttpReception/TLS_(HTTP/1.1)
        server_test.go:267:
                    Error Trace:    /Users/shaunak/development/github/opentelemetry-collector/config/confighttp/server_test.go:267
                    Error:          Received unexpected error:
                                    Get "https://127.0.0.1:64824": crypto/ecdh: use of X25519 is not allowed in FIPS 140-only mode
                    Test:           TestHttpReception/TLS_(HTTP/1.1)
    === RUN   TestHttpReception/NoServerCertificates
    === RUN   TestHttpReception/mTLS
        server_test.go:267:
                    Error Trace:    /Users/shaunak/development/github/opentelemetry-collector/config/confighttp/server_test.go:267
                    Error:          Received unexpected error:
                                    Get "https://127.0.0.1:64828": crypto/ecdh: use of X25519 is not allowed in FIPS 140-only mode
                    Test:           TestHttpReception/mTLS
    === RUN   TestHttpReception/NoClientCertificate
    === RUN   TestHttpReception/WrongClientCA
    --- FAIL: TestHttpReception (0.03s)
        --- PASS: TestHttpReception/noTLS (0.01s)
        --- FAIL: TestHttpReception/TLS (0.01s)
        --- FAIL: TestHttpReception/TLS_(HTTP/1.1) (0.00s)
        --- PASS: TestHttpReception/NoServerCertificates (0.00s)
        --- FAIL: TestHttpReception/mTLS (0.01s)
        --- PASS: TestHttpReception/NoClientCertificate (0.00s)
        --- PASS: TestHttpReception/WrongClientCA (0.01s)
    FAIL
    FAIL    go.opentelemetry.io/collector/config/confighttp 0.501s
    ?       go.opentelemetry.io/collector/config/confighttp/internal        [no test files]
    FAIL
    ```
    
    ##### With the `requirefips` build tag
    
    ```
    $ go version
    go version go1.25.1 darwin/arm64
    $ GODEBUG=fips140=only go test -tags requirefips ./... -test.v -test.run TestHttpReception -count 1
    === RUN   TestHttpReception
    === RUN   TestHttpReception/noTLS
    === RUN   TestHttpReception/TLS
    === RUN   TestHttpReception/TLS_(HTTP/1.1)
    === RUN   TestHttpReception/NoServerCertificates
    === RUN   TestHttpReception/mTLS
    === RUN   TestHttpReception/NoClientCertificate
    === RUN   TestHttpReception/WrongClientCA
    --- PASS: TestHttpReception (0.03s)
        --- PASS: TestHttpReception/noTLS (0.00s)
        --- PASS: TestHttpReception/TLS (0.01s)
        --- PASS: TestHttpReception/TLS_(HTTP/1.1) (0.00s)
        --- PASS: TestHttpReception/NoServerCertificates (0.00s)
        --- PASS: TestHttpReception/mTLS (0.01s)
        --- PASS: TestHttpReception/NoClientCertificate (0.00s)
        --- PASS: TestHttpReception/WrongClientCA (0.01s)
    PASS
    ok      go.opentelemetry.io/collector/config/confighttp 0.493s
    ?       go.opentelemetry.io/collector/config/confighttp/internal        [no test files]
    ```
