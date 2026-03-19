commit e70b5ab377cc28a28aa6c594949df3953ddd5c0d
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri Mar 15 06:06:21 2024 -0600

    [confignet] Change `Transport` from `string` to `TransportType` (#9385)
    
    **Description:**
    Changes `Transport` from a `string` to a new `TransportType`. Implements
    `UnmarshalText` for `TransportType` to enforce values.
    
    This PR may be too much - it introduces a breaking change a lot of new
    public APIs that may not be worth it for such a small module. If we
    don't like the surface area this creates or the breaking change, but we
    still want to enforce transport type values, I think implementing
    `Validate` keeps the API footprint smaller and isn't breaking.
    
    **Link to tracking Issue:** <Issue number if applicable>
    
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/9364
    
    **Documentation:** <Describe the documentation added.>
    
    Added godoc comments
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
