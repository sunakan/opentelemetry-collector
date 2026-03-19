commit 99d6040c4f1fa514bed538914c562e327998867d
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Jun 26 13:10:51 2020 -0700

    Do not embed ProtocolSettings in gRPC (#1210)
    
    Adding `ProtocolServerSettings` was a bit of a rush. We determined that `endpoint` has different meaning based on protocol, also not all the protocols support TLS.
    
    In this PR we revert embedding `ProtocolServerSettings` in the GRPCServerSettings and make it consistent with HttpServerSettings.
    
    Work left: Consistent config name for TLS settings `tls_settings` or `tls_credentials`.
