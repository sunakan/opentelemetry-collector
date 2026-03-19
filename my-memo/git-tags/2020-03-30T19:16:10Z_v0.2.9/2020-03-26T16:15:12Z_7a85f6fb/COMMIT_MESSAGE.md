commit 7a85f6fb34137661616ad35127e99010442f80fb
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Mar 26 09:15:12 2020 -0700

    Add internal data -> OC compatibility shims to processors and exporters (#667)
    
    In order to start migrating components from OC to internal data, all parts of the pipeline should be able to automatically convert back to OC if downstream component doesn't work with internal data structure
