commit 87dd2af5d648ae5ac92a38ba49026971315183f9
Author: Antoine Toulme <antoine@toulme.name>
Date:   Wed Feb 7 19:19:24 2024 -0800

    [configretry] validate max_elapsed_time (#9489)
    
    **Description:**
    Validate `max_elapsed_time`, ensure it is larger than `max_interval` and
    `initial_interval` respectively.
    
    ---------
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
