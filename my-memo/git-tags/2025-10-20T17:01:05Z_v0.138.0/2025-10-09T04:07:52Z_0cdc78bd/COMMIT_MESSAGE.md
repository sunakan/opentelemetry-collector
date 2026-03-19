commit 0cdc78bdf709d5794aa3b0a95cc4ab6369dc5cb1
Author: Parship Chowdhury <i.am.parship@gmail.com>
Date:   Thu Oct 9 09:37:52 2025 +0530

    feat(confighttp): add DisableKeepAlives to ServerConfig for all HTTP receivers (#13783)
    
    #### Description
    This PR adds `DisableKeepAlives` configuration option to
    `confighttp.ServerConfig`, providing universal HTTP keep-alive control
    for all HTTP receivers.
    
    #### Testing
    - Added unit tests
    - All existing confighttp tests pass
    
    ---------
    
    Signed-off-by: Parship Chowdhury <i.am.parship@gmail.com>
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
