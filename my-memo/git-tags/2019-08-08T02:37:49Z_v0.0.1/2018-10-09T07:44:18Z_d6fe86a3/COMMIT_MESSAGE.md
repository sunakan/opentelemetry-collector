commit d6fe86a3c2fbe3787769dca11c5c28143aff853a
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Mon Oct 8 16:29:32 2018 -1000

    cmd/ocagent: OpenCensus interceptor bind address configurable via config.yaml
    
    Use the config.yaml file to configure the OpenCensus
    interceptor listener's address, instead of using commandline flags.
    This is because all the other configurations are performed
    using the config.yaml file so an extra option is just confusing.
    
    The default port to run on is 55678 if unspecified, but otherwise
    YAML parseable by key `opencensus_interceptor`, and then using the
    field name `address`. For example:
    
    ```yaml
    opencensus_interceptor:
      address: ":55777"
    ```
    
    and when run with
    ```shell
    ocagent
    ```
    
    which will then produce:
    ```shell
    2018/10/08 16:36:47 Running OpenCensus interceptor as a gRPC service at "localhost:55777"
    ```
    
    Fixes #23
