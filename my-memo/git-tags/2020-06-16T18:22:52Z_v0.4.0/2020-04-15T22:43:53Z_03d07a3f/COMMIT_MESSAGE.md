commit 03d07a3fc6397014c12019844e5902e8d5730de1
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Wed Apr 15 15:43:53 2020 -0700

    Zipkin receiver should not error on zero IDs (#836)
    
    While zero IDs are considered by most formats to be an error the Collector should not drop data because of that. This follows the same pattern already adopted for the Jaeger receiver.
