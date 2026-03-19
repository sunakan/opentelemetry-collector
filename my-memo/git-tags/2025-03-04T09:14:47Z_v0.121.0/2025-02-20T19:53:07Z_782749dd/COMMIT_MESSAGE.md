commit 782749dd3156204fd8a0d417b57c06dc0febf65d
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Thu Feb 20 11:53:07 2025 -0800

    [service] fix v0.2.0 to v0.3.0 conversion bug (#12438)
    
    Converting headers from config schema v0.2.0 to v0.3.0 was causing a nil
    dereferencing issue by incorrectly setting the name/value pair to a nil
    pointer. Added a test in both the loading of the config in otelcol, as
    well as the migration code unit test.
    
    Fixes #12439
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
