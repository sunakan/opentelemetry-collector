commit 98bea6e0d95f98daad410dbbe9feeb094438d39f
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Sat Mar 27 21:44:37 2021 -0700

    Change health_check default endpoint to 0.0.0.0:13133 (#2828)
    
    This commits brings back default configuration of the health_check extension to make sure it works in k8s-like environments without extra configuration as it was before the latest change https://github.com/open-telemetry/opentelemetry-collector/pull/2782.
    
    Resolves: https://github.com/open-telemetry/opentelemetry-collector/issues/2827
