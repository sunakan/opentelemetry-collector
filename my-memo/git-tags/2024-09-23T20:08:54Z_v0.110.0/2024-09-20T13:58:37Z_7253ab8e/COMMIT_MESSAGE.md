commit 7253ab8ef8e5bd908e8712c23a58f2463023348f
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Sep 20 06:58:37 2024 -0700

    [chore] Remove use of alias types in service/telemetry (#11182)
    
    This PR moves internal definitions that were aliased publicly to the
    public package, and makes sure that hides any other type so that the API
    surface is the same.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
