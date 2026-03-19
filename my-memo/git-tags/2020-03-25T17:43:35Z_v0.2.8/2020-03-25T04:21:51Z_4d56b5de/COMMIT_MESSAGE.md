commit 4d56b5de652772c3127b9c984fb772e5e994c96e
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Mar 24 21:21:51 2020 -0700

    Add e2e test for OLTP metrics and fix a bug in oc->otlp translation (#694)
    
    - Add an e2e test for OLTP metrics
    - Fix a bug in OC->OTLP translation when metrics with no labels were failing
