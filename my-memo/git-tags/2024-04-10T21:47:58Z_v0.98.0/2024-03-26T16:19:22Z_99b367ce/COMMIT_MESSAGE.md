commit 99b367cecc4662103b436eba75d6c502b1e64832
Author: Tomás Mota <tomasrebelomota@gmail.com>
Date:   Tue Mar 26 17:19:22 2024 +0100

    [confmap] log a warning when using $VAR in config (WIP) (#9547)
    
    **Description:** As requested by @mx-psi , added a no-op log for when
    variables using the deprecated $VAR style are used. The logger should be
    replaced once it is clear how to pass it down (see #9443). Also, from my
    testing, the function passed to os.Expand is in fact only run when we
    have $VAR and not for ${env:VAR}, so I did not add additional checking.
    
    **Link to tracking Issue:** #9162
    
    **Testing:** I am not sure how to go about testing it, since we are not
    passing a logger in yet, there is no easy way to know what is being
    logged or what the map looks like. Some ideas on this would be
    appreciated
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
