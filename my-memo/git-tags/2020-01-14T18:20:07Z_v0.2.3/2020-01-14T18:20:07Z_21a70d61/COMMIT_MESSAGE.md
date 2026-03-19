commit 21a70d61d66459fbe766165c23f6f58c46b268a0
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Jan 14 13:20:07 2020 -0500

    Add a memory limiter processor (#498)
    
    This adds a processor that drops data according to configured memory limits.
    The processor is important for high load situations when receiving rate exceeds exporting
    rate (and an extreme case of this is when the target of exporting is unavailable).
    
    Typical production run will need to have this processor included in every pipeline
    immediately after the batch processor.
