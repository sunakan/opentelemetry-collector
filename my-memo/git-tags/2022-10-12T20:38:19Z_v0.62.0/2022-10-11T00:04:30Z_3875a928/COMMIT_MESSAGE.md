commit 3875a928ca88870329be6ed2f7460344dede44cd
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Oct 10 17:04:30 2022 -0700

    [pdata] Rename ValueAtQuantile to SummaryDataPointValueAtQuantile (#6262)
    
    Rename `pmetric.[New]?ValueAtQuantile[Slice]?` structs and functionas to align them with the underlying protobuf messages. It should have SummaryDataPoint prefix as they are defined in the scope of SummaryDataPoint protobuf message.
