commit 9164481cf067994f29431c293971a0a72f45fd20
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Mon Jan 5 07:31:39 2026 -0800

    [xprocessor] Use receiver pointer in xprocessor factory methods (#14348)
    
    This change brings this factory into consistency with other factories
    that define methods using pointer receivers. While this is technically a
    breaking change, the likelihood of it causing any issues on the user
    side is extremely low.
