commit be000d6f2b4a8df725745ad8346b8bacf6181ac5
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Feb 24 21:50:11 2026 +0200

    [memorylimiter] Use ChainUnaryInterceptor instead of UnaryInterceptor (#14634)
    
    #### Description
    
    The problem is that `grpc.UnaryInterceptor` allow to set only one
    interceptor and if more extensions call that will panic. The right way
    to support a chain (multiple) UnaryInterceptors is to use
    `grpc.ChainUnaryInterceptor`.
    
    This PR also adds support for streaming.
    
    ---------
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
