commit d78b748d7ae84c623c386876945d1efcb87f076c
Author: Yuri Shkuro <yurishkuro@users.noreply.github.com>
Date:   Mon Jan 22 15:57:35 2024 -0500

    [otelcol] Add unit test for implicit config use case (#9302)
    
    **Description:**
    * Add unit test that illustrates running the command without an external
    config
    * This models how Jaeger all-in-one uses collector because all-in-one
    can be run without arguments, for maximum user friendliness
    
    ---------
    
    Signed-off-by: Yuri Shkuro <github@ysh.us>
