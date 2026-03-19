commit 4e7322b51d993bcc474dbd28ed99cddd6c2703ae
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Aug 24 08:12:23 2022 -0700

    [pdata] Deprecate pcommon.Map.InsertNull method (#5955)
    
    The method is inconsistent with other Map methods. It's not very useful and can be easily replaced by `Map.Insert(<key>, NewValueEmpty())`.
    
    **Link to tracking Issue:** https://github.com/open-telemetry/opentelemetry-collector/issues/5953
