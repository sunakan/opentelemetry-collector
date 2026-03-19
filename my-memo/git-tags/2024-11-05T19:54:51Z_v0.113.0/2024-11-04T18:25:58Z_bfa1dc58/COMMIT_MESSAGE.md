commit bfa1dc58329fb8365c588503ad3801894b8eddf7
Author: Alex Kats <56042997+akats7@users.noreply.github.com>
Date:   Mon Nov 4 13:25:58 2024 -0500

    updated grpc config to use DialContext (#11575)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This is related #11537 and [this grpc
    issue](https://github.com/grpc/grpc-go/issues/7779), to reiterate there
    is a bug in the grpc-go NewClient that makes the way the hostname is
    resolved incompatible with the way proxy setting are applied. Due to
    this domain based NO_PROXY setting do not work for grpc connections.
    They are working on a fix in the grpc library but until then it seems
    like it might be a good idea to revert to using DialContext instead of
    NewClient.
    
    If there's a workaround for this that anyone is aware of that could be
    suitable as well, the most clear one of using passthrough doesn't work
    since we sanitize the endpoint.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #11537
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    I added some logging where the proxy setting are evaluated to show the
    behavior.
    
    **DialContext**
    ______
    InMatch
    host :  otel*******</DOMAIN-NAME/>
    m.host :  </DOMAIN-NAME/>
    hasSuffix :  true
    m.matchHost :  true
    ______
    
    **NewClient**
    ______
    InMatch
    host :  10.*.*.*.*
    m.host :  </DOMAIN-NAME/>
    hasSuffix :  false
    m.matchHost :  false
    ______
    
    ---------
    
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
