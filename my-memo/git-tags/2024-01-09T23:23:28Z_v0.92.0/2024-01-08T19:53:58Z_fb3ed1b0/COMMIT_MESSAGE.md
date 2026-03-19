commit fb3ed1b0d65b91e49209a7e60d40ef4b607c6b10
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Jan 8 20:53:58 2024 +0100

    [config/configretry] Allow zero multiplier and arbitrary randomization factor (#9235)
    
    **Description:**
    
    Partial revert of #9091 to unblock
    open-telemetry/opentelemetry-collector-contrib/pull/30167
    
    This does not mean that usage of a zero multiplier or a randomization
    factor outside of [0,1] is blessed upon by Collector maintainers, just
    that we need to unblock the release :)
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    Co-authored-by: Alex Boten <aboten@lightstep.com>
