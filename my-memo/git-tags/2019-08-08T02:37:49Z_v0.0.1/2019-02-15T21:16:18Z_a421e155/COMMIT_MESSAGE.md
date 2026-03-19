commit a421e155350a5cdfac2c0de4172a31356fafcc19
Author: Bogdan Drutu <bdrutu@google.com>
Date:   Fri Feb 15 13:16:18 2019 -0800

    internal/compression/grpc: use import block for blank import (#402)
    
    Just encountered https://github.com/golang/lint/issues/366
    whose work around is to convert a single blank import "_"
    into a block import.
