commit 0075f95c2e54a0f2f60a92e5a2e64da9e9724046
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Sep 9 11:15:27 2022 -0700

    [pdata] Make wrappers primitive slices mutable (#5971)
    
    Change API for primitive slice wrappers to allow changing items as it appeared to be expensive to update that data as immutable wrappers: it requires making two copies to update a slice
