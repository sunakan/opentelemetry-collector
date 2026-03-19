commit a24f9143330c006a2fa7953ebacc759d23331f68
Author: AdamKorcz <44787359+AdamKorcz@users.noreply.github.com>
Date:   Tue Oct 1 21:55:40 2024 +0100

    Fix false fuzzer crash (#11326)
    
    The fuzzer report a null-pointer dereference which is not true. This
    fixes that.
    
    #### Link to tracking issue
    Fixes https://issues.oss-fuzz.com/issues/42538213
    
    Signed-off-by: Adam Korczynski <adam@adalogics.com>
