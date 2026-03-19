commit bb1ae648cf22c07b9a90e4bf721d7d4be1e8ff67
Author: VihasMakwana <121151420+VihasMakwana@users.noreply.github.com>
Date:   Wed Jan 17 20:29:46 2024 +0530

    [OTLP/GRPC] Ensure OTLP receiver handles consume errors correctly  (#8080)
    
    **Description:** Follow the receiver contract and return Unavailable for
    non-permanent and InvalidArgument for permanent errors for OTLP/gRPC
    receiver.
    
    Leave the "Retry-After" field blank and let the client implement an
    exponential backoff strategy.
    
    **Link to tracking Issue:**
    https://github.com/open-telemetry/opentelemetry-collector/issues/4335
    
    **Testing:** Added relevant test cases.
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
