commit 681e903fae37d1a213b62b342be7861f68d4218c
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Mar 24 08:03:02 2020 -0700

    Add OC -> OTLP metrics translation (#687)
    
    - Used in OTLP Exporter to translate internal OC format to OTLP
    - translator/common/oc_to_otlp.go code was moved as is from trace/oc_to_otlp.go
    
    Testing: Unit tests
