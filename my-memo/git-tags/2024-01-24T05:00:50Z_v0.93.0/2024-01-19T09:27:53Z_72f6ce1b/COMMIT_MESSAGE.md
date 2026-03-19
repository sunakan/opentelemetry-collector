commit 72f6ce1b53e27e6f6ccb49935ae6e9159c375613
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri Jan 19 02:27:53 2024 -0700

    [configopaque] Implement encoding.BinaryMarshaler interface for String (#9279)
    
    **Description:** <Describe what has changed.>
    Implements the `encoding.BinaryMarshaler` interface for `String`. This
    prevents the situation `configopaque` -> `[]byte` -> `string` from
    leaking the `String` value.
    
    **Link to tracking Issue:** <Issue number if applicable>
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/9272
    
    **Testing:**
    Added unit test
    
    ---------
    
    Co-authored-by: Antoine Toulme <antoine@toulme.name>
