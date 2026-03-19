commit 6db7374e2fea142ea8845264d42a67097f516a85
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Aug 20 20:19:49 2025 -0700

    Add support for local memory pooling for data objects (#13678)
    
    This feature is protected by a featuregate that is not yet enabled and
    only marked as alpha. Preliminary results show > 20% CPU performance
    improvement and at least 40% allocations improvement. I still need to
    generate UnmarshalProto for AnyValue which should improve even more
    results.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
