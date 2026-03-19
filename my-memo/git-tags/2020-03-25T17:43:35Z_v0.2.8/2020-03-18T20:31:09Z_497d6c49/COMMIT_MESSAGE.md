commit 497d6c498c77061838cc317cd700c727d0a1d9f9
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Mar 18 13:31:09 2020 -0700

    Add compatibility shim between internal and OC metrics (#651)
    
    This defines an internal data -> OC metrics converter that applied automatically between a new type component and a downstream component that can handle only OC metrics in a pipeline.
