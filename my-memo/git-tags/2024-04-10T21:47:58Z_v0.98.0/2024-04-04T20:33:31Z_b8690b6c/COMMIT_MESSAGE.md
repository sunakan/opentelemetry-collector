commit b8690b6c3b01594522776ab2c9baa64338c7b9a1
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Thu Apr 4 14:33:31 2024 -0600

    [receiver/otlp] Refactor http error handling (#9893)
    
    **Description:**
    This PR slightly refactors the otlp receiver's HTTP error handling. The
    result is a few less calls to `status.FromError`, increased accuracy in
    the grpc code included in the body of the response, and centralizing
    http<->grpc mapping in the `internal/errors` package.
    
    This PR intentionally changes how we map from HTTP status code to grpc
    `Status.code`. I don't consider this to be a breaking change, or even
    worthy of a changelog, since the specification states that `"The clients
    are not expected to alter their behavior based on Status.code field but
    MAY record it for troubleshooting purposes."` Honestly, I'd be ok if we
    chose to stop including the `Status.code` entirely as it leads to more
    confusion in the code and payload in my opinion.
    
    **Link to tracking Issue:**
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/9864
    
    **Testing:**
    Added new tests
