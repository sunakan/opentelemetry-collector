commit e4cfde47582df7bc20106fc0713d0a19b889f2a3
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Oct 7 09:37:47 2022 -0700

    [pdata] Rename MetricAggregationTemporality to AggregationTemporality (#6253)
    
    As a new rule we want to rename all the structs for proto messages defined at the package level to not have the owner prefix in its name.
