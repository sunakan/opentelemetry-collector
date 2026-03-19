commit 8e194e8d1e0a369b59245c0b917e19ce21e437a7
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Aug 17 13:48:53 2022 -0700

    Fix json trace/metrics unmarshaling for numbers (#5924)
    
    - Accept both string and number for int32/uint32.
    - Read uint64 numbers without converting from int64.
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
