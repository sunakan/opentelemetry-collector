commit 6ad6b868161095d5f5292839a2a2edfa1792d591
Author: Tania Pham <taniyourstruly@users.noreply.github.com>
Date:   Tue Jul 2 10:47:09 2024 -0700

    Change default otlp exporter GRPC load balancer to round robin (#10319)
    
    #### Description
    Updates the default `pick_first` load balancer to `round_robin`, which
    allows for better resource allocation and less chances of throttling
    data being sent to addresses.
    
    #### Link to tracking issue
    Fixes #10298 (has full context of this PR)
    
    #### Testing
    Edited tests to allow round_robin load balancing.
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
