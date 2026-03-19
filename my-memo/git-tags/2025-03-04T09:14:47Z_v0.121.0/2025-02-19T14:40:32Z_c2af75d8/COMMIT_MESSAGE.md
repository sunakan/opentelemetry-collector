commit c2af75d88e89800c0cb534f356d149bd1b788af4
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Wed Feb 19 09:40:32 2025 -0500

    [confighttp] Remove pointers from integer fields (#12323)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    I was looking through our defaults for a few `confighttp.ClientConfig`
    fields and found that `0` disables these fields in the underlying
    `http.Transport` object, which means we don't need them to be pointers.
    
    Docs for the four fields we set in `http.Transport` here:
    https://pkg.go.dev/net/http#Transport.MaxIdleConns
    
    I also stopped assigning defaults to any fields we take from
    `http.DefaultTransport` where setting them is a no-op since they aren't
    set in `http.DefaultTransport`.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    Helps unblock confighttp 1.0 from depending on
    https://github.com/open-telemetry/opentelemetry-collector/issues/9478
