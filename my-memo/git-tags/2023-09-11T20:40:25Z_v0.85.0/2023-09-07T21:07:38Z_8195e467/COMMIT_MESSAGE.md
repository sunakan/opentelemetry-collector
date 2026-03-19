commit 8195e467d536d73239731c7eba63d0ce5e669136
Author: Katarzyna Kujawa <73836361+kkujawa-sumo@users.noreply.github.com>
Date:   Thu Sep 7 23:07:38 2023 +0200

    [confighttp] Add option to disable HTTP keep-alives (#8274)
    
    Add option to disable HTTP keep-alives which helps in better load
    balancing in k8s clusters when otlphttp exports are used to send logs to
    otlp receivers
    
    Closes  #8260
