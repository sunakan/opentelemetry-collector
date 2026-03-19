commit f6ed359914886417b02b0c04c33c614a9393add8
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Sun Jun 19 14:47:56 2022 -0700

    [pdata] Use immutable slices for primitive type slices (#5299)
    
    Use immutable slices for primitive types slices to restrict mutations.
      - `Value.SetMBytesVal` func is deprecated in favor of `Value.SetBytesVal` func that takes
        `pcommon.ImmutableByteSlice` instead of []byte.
      - `Value.MBytesVal` func is deprecated in favor of `Value.BytesVal` func that returns `pcommon.ImmutableByteSlice`
        instead of []byte.
      - `<HistogramDataPoint|Buckets>.SetMBucketCounts` funcs are deprecated in favor of
        `<HistogramDataPoint|Buckets>.SetBucketCounts` funcs that take `pcommon.ImmutableUInt64Slice` instead of []uint64.
      - `<HistogramDataPoint|Buckets>.MBucketCounts` funcs are deprecated in favor of
        `<HistogramDataPoint|Buckets>.BucketCounts` funcs that return `pcommon.ImmutableUInt64Slice` instead of []uint64.
      - `HistogramDataPoint.SetMExplicitBounds` func is deprecated in favor of `HistogramDataPoint.SetExplicitBounds` func
        that takes `pcommon.ImmutableFloat64Slice` instead of []float64.
      - `HistogramDataPoint.MExplicitBounds` func func is deprecated in favor of `HistogramDataPoint.ExplicitBounds`
        returns `pcommon.ImmutableFloat64Slice` instead of []float64.
