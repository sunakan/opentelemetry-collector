commit 24cf5c4187cbba9d9e795a2c3a1a61e514794749
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Apr 20 13:23:24 2022 -0700

    [pdata] Split pmetric.MetricValueType into specific types (#5233)
    
    Split `pmetric.MetricValueType` into `NumberDataPointValueType` and `ExemplarValueType`
    
    1. `NumberDataPoint.ValueType()` now returns a `NumberDataPointValueType` that can be `NumberDataPointValueTypeInt` or `NumberDataPointValueTypeDouble`.
    
    2. `pmetric.Exemplar.ValueType()` now returns a `ExemplarValueType` that can be `ExemplarValueInt` or `ExemplarValueDouble`.
    
    1 Use case is the most common. Thats why we are keeping backward compatibility for it. 2 is rarely being used. So we don't keep backward compatibility for it to avoid mixing the split types.
    
    Co-authored-by: Alex Boten <aboten@lightstep.com>
