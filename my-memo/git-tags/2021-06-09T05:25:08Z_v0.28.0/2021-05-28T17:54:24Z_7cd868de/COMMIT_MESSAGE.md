commit 7cd868deb6cccd2d6c320077b093bb13ce196c34
Author: Pavan Krishna <pavankri@cisco.com>
Date:   Fri May 28 10:54:24 2021 -0700

    Port client side authentication interfaces from PR #3128  (#3321)
    
    This PR ports the client authenticator interfaces from PR #3128  in a piece meal fashion. The interfaces are currently not used by any client configurations and are published for reviewing only.
    
    Plan is to modify ToClient and ToDialOptions apis once all the clients are prepared per #3287 (core and contrib side as well).
    
    Link to tracking Issue:
    #3287 #3282
    
    Testing:
    Unit tests, [manual test described (for only oidc)](https://github.com/open-telemetry/opentelemetry-collector/pull/3128#issuecomment-842485897)
