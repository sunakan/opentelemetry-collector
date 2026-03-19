commit 05867e63ac871040b790d91ffb85efdc4148b45f
Author: Joshua Jones <joshua.jones@dynata.com>
Date:   Thu Mar 21 14:33:02 2024 -0400

    [otlphttpexporter] return nil from partial success handler when HTTP response body is empty (#9667)
    
    **Description:**
    Fixing a bug - When exporting using the otlphttpexporter, after
    receiving a successful HTTP response, when the response body's content
    length is 0 and the content type is specified as either
    "application/json" or "application/x-protobuf", an attempt will be made
    to unmarshal a nil value within any of the partial success response
    handler functions. This results in an error, and a potential resend of
    the original export request.
    
    To fix this scenario, a check was added to the
    `tracesPartialSuccessHandler`, `metricsPartialSuccessHandler`, and
    `logsPartialSuccessHandler` functions for a `nil` value in the
    `protoBytes` argument. When `nil`, the function will return with a `nil`
    value, indicating the absence of any error.
    
    **Link to tracking Issue:** #9666
