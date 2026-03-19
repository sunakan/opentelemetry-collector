commit dbdb5eb5129b36f087c79ee8f9c18b153066b351
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Mar 13 18:00:37 2020 -0700

    Add compatibility shim between internal and OC traces (#633)
    
    Once new receiver that uses internal data structure added into the pipeline it must be able to work with downstream components that still use old OC traces internally
