commit 6cde8020f296a3b41478352a936e6fccebaf4eb6
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed May 11 13:01:51 2022 -0700

    [pdata] Rename methods dealing with slices of primitive type items (#5344)
    
    * [pdata] Rename methods dealing with slices of primitive type items
    
    - In preparation of migration to immutable slices for primitive type items the following methods are renamed:
      - `Value.BytesVal` func is deprecated in favor of `Value.MBytesVal`.
      - `Value.SetBytesVal` func is deprecated in favor of `Value.SetMBytesVal`.
      - `Value.UpdateBytes` func is deprecated in favor of `Value.UpdateMBytes`.
      - `Value.InsertBytes` func is deprecated in favor of `Value.InsertMBytes`.
      - `Value.UpsertBytes` func is deprecated in favor of `Value.UpsertMBytes`.
      - `<HistogramDataPoint|Buckets>.BucketCounts` funcs are deprecated in favor of
        `<HistogramDataPoint|Buckets>.MBucketCounts`.
      - `<HistogramDataPoint|Buckets>.SetBucketCounts` funcs are deprecated in favor of
        `<HistogramDataPoint|Buckets>.SetMBucketCounts`.
      - `HistogramDataPoint.ExplicitBounds` func is deprecated in favor of `HistogramDataPoint.MExplicitBounds`.
      - `HistogramDataPoint.SetExplicitBounds` func is deprecated in favor of `HistogramDataPoint.SetMExplicitBounds`.
    
    * Update CHANGELOG.md
