commit 0ad0436a14d80ac916dddaeca098d1dc202179d1
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Jan 6 22:07:22 2023 -0500

    [chore] Don't use prom server created by OpenCensus iniialization (#6890)
    
    Create the Prometheus HTTP handler explicitly to better separate responsibilities between OC and OTel instrumentation initializations and prepare for the eventual removal of the OC instrumentation
