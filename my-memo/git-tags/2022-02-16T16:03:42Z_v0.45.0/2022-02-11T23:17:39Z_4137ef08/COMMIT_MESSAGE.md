commit 4137ef081d902abccf8258bb488bcce26eaafa28
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Feb 11 15:17:39 2022 -0800

    [pdata] Rename `NumberDataPoint/Exemplar.Type` methods to `ValueType` (#4850)
    
    Deprecate `NumberDataPoint.Type()` and `Exemplar.Type()` in favor of `NumberDataPoint.ValueType()` and `Exemplar.ValueType()` instead. Do not use accessorType in the pdatagen, always rely on proto field type for consistency.
