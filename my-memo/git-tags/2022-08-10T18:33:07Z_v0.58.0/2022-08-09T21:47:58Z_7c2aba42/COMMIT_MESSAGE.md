commit 7c2aba42a910076bf2999e8ab16dcea959cfb8a4
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Aug 9 14:47:58 2022 -0700

    Deprecate MetricDataPointFlags.String(), no other pdata has this (#5868)
    
    * Deprecate MetricDataPointFlags.String(), no other pdata has this
    
    If offering String() on pdata we should do it from the pdata generator not as ad-hoc for some of the hand written structs.
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    * Update CHANGELOG.md
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
