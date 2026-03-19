commit a509d72a24fbcb03722d27ad98ae08bc3f87dc5a
Author: Rashmi <RashmiRam@users.noreply.github.com>
Date:   Thu Jul 16 00:54:11 2020 +0530

    Added round_robin balancer as an option to gRPC client settings (#1353)
    
    * Added round_robin balancer as an option to gRPC client settings
    
    * Added documentation changes`
    
    * Changed the balancerName setting from bool to string to accomodate new balancers in future
    
    Setting invalid balancer is panicking. Hence validated the same & thrown an error
    
    * Fixed test
    
    * Fixed tests
    
    * Replaced grpc.WithBalancerName with grpc.WithDefaultServiceConfig
    
    * Validated the balancerName using a var string array instead of error control flow
    
    * Fixed lint errors
    
    * Fixed lint errors
    
    * typo fix in documentation
