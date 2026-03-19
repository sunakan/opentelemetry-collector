commit 6a3daca78365efb2d61bf5533efb397bb5ffad20
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Aug 24 10:30:56 2020 -0700

    Fix OTLP receiver configuration in examples (#1613)
    
    Currently containers are failing with: "Error: cannot load configuration: error reading receivers configuration for otlp: empty config for OTLP receiver"
