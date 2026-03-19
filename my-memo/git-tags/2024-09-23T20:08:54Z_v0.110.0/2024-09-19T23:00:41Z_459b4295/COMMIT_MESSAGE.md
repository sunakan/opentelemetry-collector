commit 459b4295afa83793e4ab4c5186f487323677542b
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Fri Sep 20 01:00:41 2024 +0200

    [configgrpc] wrap gRPC client/server options in extensible interface (#11069)
    
    #### Description
    
    To allow extending the possible option types provided to
    `configgrpc.ClientConfig.ToClientConn` and
    `configgrpc.ServerConfig.ToServer` in the future, we want to wrap the
    `grpc.DialOption` and `grpc.ServerOption` parameters in more generic
    `ToClientConnOption` and `ToServerOption` interfaces.
    
    For compatibility, we start by adding new `ToClientConnWithOptions` and
    `ToServerWithOptions` methods, to which the now deprecated
    `ToClientConn` and `ToServer` defer. A second PR will be needed to fully
    replace the original methods.
    
    #### Link to tracking issue
    Fixes #9480
    
    #### Testing
    No tests have been added. Feel free to tell me if I should add some.
    
    #### Documentation
    No documentation has been added.
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
