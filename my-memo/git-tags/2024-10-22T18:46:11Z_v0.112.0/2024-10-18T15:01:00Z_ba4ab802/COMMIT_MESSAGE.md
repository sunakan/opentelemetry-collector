commit ba4ab802214f1c812f22f8c1ce9503a02a2a4984
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Oct 18 08:01:00 2024 -0700

    [chore] [pdatagen] Allow slices in the pcommon package (#11474)
    
    Currently, pdatagen doesn't allow defining slices in the common package,
    while all other types do allow it. This is needed for
    https://github.com/open-telemetry/opentelemetry-collector/pull/11282
