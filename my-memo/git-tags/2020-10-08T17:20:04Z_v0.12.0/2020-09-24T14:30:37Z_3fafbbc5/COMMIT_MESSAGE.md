commit 3fafbbc528dcd836cc834359bef1a6e5c352b311
Author: Nail Islamov <nilebox@users.noreply.github.com>
Date:   Fri Sep 25 00:30:37 2020 +1000

    Skip creation of redundant nil resource in translation from OC if there are no combined metrics (#1803)
    
    Getting rid of redundant nil `ResourceObject` when all metrics have resource specified.
    
    After removal of `pdatautil` package in #1739, I've migrated our custom components from `pdatautil.MetricsFromMetricsData` to `internaldata.OCToMetrics` and found that some tests are failing due to converted metrics having an extra "empty" `ResourceMetrics` object in the slice.
    
    **Testing:** Added unit test reproducing the issue
