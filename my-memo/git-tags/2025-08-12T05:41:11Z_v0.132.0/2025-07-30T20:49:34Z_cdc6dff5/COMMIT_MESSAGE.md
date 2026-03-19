commit cdc6dff5455d094b45f141df019a2315d0275ab2
Author: Vihas Makwana <121151420+VihasMakwana@users.noreply.github.com>
Date:   Thu Jul 31 02:19:34 2025 +0530

    [confighttp] - Expose an option to set ForceAttemptHttp2 setting (#13426)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    We make use golang's `DefaultTransport`, which forces the use of [HTTP/2
    by
    default](https://cs.opensource.google/go/go/+/refs/tags/go1.24.5:src/net/http/transport.go;l=51).
    
    However, some of our settings are only applicable while using HTTP/1
    transport (`MaxConnsPerHost`, `MaxIdleConnsPerHost` and `MaxIdleConns`).
    Users wanting to force such settings should have an option to use HTTP/1
    by disabling `ForceAttemptHTTP2` to `false`. This PR adds that option.
    
    By default, `ForceAttemptHTTP2` is set to `true` for backward
    compatibility.
