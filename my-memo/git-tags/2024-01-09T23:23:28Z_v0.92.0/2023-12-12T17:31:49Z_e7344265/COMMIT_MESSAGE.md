commit e7344265717309ae625926405359c29737a3fd72
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Dec 12 09:31:49 2023 -0800

    [chore] [makefile] Update check-changes and prepare-release targets (#9082)
    
    Relax requirements for prepare-release by removing check-changes.
    Currently, even if it fails, the prepare-release target isn't canceled.
    
    check-changes should be used separately by a release manager
    
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/9081
