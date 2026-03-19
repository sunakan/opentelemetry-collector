commit cbbb8710def9721326705c9ef12c37be42952e8b
Author: Mikołaj Świątek <mail@mikolajswiatek.com>
Date:   Tue Mar 10 05:09:34 2026 +0100

    Allow status transitions between the same status value for Ok and RecoverableError (#14638)
    
    #### Description
    
    Allow status transitions between the same status value, if the status is
    `Ok` or `RecoverableError`. Status events now carry metadata, so it's
    valid to emit the same status value multiple times with new metadata.
    This is particularly important for subcomponents, which appear as a
    single component to the status reporting framework.
    
    We're leaving other status values alone for now due to
    https://github.com/open-telemetry/opentelemetry-collector/issues/14692
    making things more complex.
    
    #### Link to tracking issue
    Partially addresses
    https://github.com/open-telemetry/opentelemetry-collector/issues/14282
    
    #### Testing
    I modified the respective unit tests.
