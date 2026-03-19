commit d6ed8246b64aba33d6b0f270f46a6b907b7f5fd5
Author: Bogdan <bogdandrutu@gmail.com>
Date:   Thu Oct 27 12:11:37 2022 -0700

    Deprecate all types and funcs in config package
    
    The main reason is to remove the circular dependency between the config (including sub-packages) and component. Here is the current state:
    * component depends on config
    * config/sub-package[grpc, http, etc.] depends on config & component
    
    Because of this "circular" dependency, we cannot split for example "config" into its own module, only if all the other config sub-packages are also split.
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
