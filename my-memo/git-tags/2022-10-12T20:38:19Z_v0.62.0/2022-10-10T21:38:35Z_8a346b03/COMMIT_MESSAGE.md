commit 8a346b03295fa4eee78f6cc6534fa48e1f07334d
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Oct 10 14:38:35 2022 -0700

    [pdata] Rename pmetric.Buckets to ExponentialHistogramDataPointBuckets (#6261)
    
    Rename `pmetric.[New]?Buckets` struct and func to align it with the underlying protobuf message. It should have `ExponentialHistogramDataPoint` prefix as it's defined in the scope of `ExponentialHistogramDataPoint` protobuf message.
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
