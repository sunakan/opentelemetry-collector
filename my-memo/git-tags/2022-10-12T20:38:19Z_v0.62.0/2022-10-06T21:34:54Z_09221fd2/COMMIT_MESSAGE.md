commit 09221fd266f4dc93fbe3ce46c07be5942699fc42
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Oct 6 14:34:54 2022 -0700

    [exporter/logging] Apply consistent map value rendering (#6244)
    
    Remove custom rendering for slice and map values and use Value.AsString() instead
