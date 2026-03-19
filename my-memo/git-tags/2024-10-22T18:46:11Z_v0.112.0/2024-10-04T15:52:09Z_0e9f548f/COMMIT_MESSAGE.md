commit 0e9f548fcd7709149426e4ce4dd7c7de7e1d8296
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Fri Oct 4 17:52:09 2024 +0200

    [configgrpc] Remove deprecated aliases (#11359)
    
    #### Description
    
    This PR removes
    `ClientConfig.ToClientConnWithOptions`/`ServerConfig.ToServerWithOptions`,
    deprecated aliases of
    `ClientConfig.ToClientConn`/`ServerConfig.ToServer`, which were
    introduced in v0.111.0. This was part of the three step process to
    change the option type used by these methods (introduce new methods
    using the new option type and deprecate the old ones / remove old
    methods, rename new methods to the old names, add deprecated aliases for
    the new names / remove aliases).
    
    #### Link to tracking issue
    
    Fixes #9480
