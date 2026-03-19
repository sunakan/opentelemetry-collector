commit 6329c24558e9106d4e0a4b30d1715742deb43ba4
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Thu Aug 29 08:08:45 2024 -0700

    [configgrpc] fix integer overflow in grpc server configuration (#10948)
    
    Change the value of max_recv_msg_size_mib from uint64 to int to avoid a
    case where misconfiguration caused an integer overflow. Added a Validate
    function to configgrpc as part of this to validate that users didn't set
    the value to something that would overflow when converted from megabytes
    to bytes.
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
