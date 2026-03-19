commit a08f9827fb24ec46091e8b148733c0d064339cf3
Author: Paulo Janotti <paulo@omnition.io>
Date:   Fri Jan 11 15:12:37 2019 -0800

    Temporarily disabling gRPC views for OC receiver (#304)
    
    Due to issue https://github.com/census-instrumentation/opencensus-service/issues/287
    these are not providing any useful information. Disabling them for now.
