commit 719845157b11cba4c6bcb13cae7022ecef164b34
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Thu Mar 14 12:50:02 2024 -0700

    [chore] Refactor mdatagen unmarshaling to use less custom Unmarshalers (#9760)
    
    Now that we support embedded structs unmarshaling, we can simplify the
    code handling metric data unmarshaling somewhat.
