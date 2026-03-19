commit 40396d5fc50cc626882d4cf7fae36240e06f4c70
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Fri Sep 27 21:50:42 2024 +0200

    [configgrpc] Replace deprecated ToClientConn and ToServer with new API (#11271)
    
    #### Description
    
    `ClientConfig.ToClientConn` and `ServerConfig.ToServer` were deprecated
    in v0.110.0 in favor of `ClientConfig.ToClientConnWithOptions` and
    `ServerConfig.ToServerWithOptions` which use a more flexible option type
    (#11069). The original functions are now removed, and the new ones are
    renamed to the old names. The `WithOptions` names are kept as deprecated
    aliases for now.
    
    Note: The "4 lines missing coverage" are from the `WithOptions` function
    aliases.
    
    #### Link to tracking issue
    Updates #9480
    
    #### Next steps
    
    - `collector-contrib` will need to be updated to rename uses of the
    `WithOptions` functions
    - The newly deprecated aliases will then need to be removed in the next
    release
