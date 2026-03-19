commit 4b5d68ed282ce87beeeb2ff18e03f0d61fc285b0
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Mar 27 16:04:08 2024 -0700

    [exporterhelper] Add default batching for OTLP data type (#9738)
    
    Introduce default batching functionality based on the internal data type
    (pdata). This makes the exporter batching capability available to the
    regular exporter helpers without using custom requests.
    
    Updates #8122
