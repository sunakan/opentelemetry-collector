commit b8dda3f44b8933b535902ea7c76faae67b3c7feb
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Sep 23 12:04:06 2021 +0300

    Add test to prove setting max_recv_msg_size_mib works as expected (#3968)
    
    * Add test to prove setting max_recv_msg_size_mib works as expected
    
    When the limit is set to 50MB I get this:
    ```
    rpc error: code = ResourceExhausted desc = grpc: received message larger than max (79500054 vs. 52428800)
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * add test that returns an error without MaxRecvMsgSizeMiB
    
    Co-authored-by: Alex Boten <aboten@lightstep.com>
