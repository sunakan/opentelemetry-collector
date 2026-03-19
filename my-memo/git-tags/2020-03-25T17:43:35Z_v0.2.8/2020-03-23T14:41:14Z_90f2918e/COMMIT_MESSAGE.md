commit 90f2918e4c6ab1d4c9235f13d67a8e5f1c3e01fe
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Mon Mar 23 07:41:14 2020 -0700

    Fix metric names in obsreport (#674)
    
    - Fix export failed for metrics (changed the test to not use the metric itself, so the intended name is captured on the test).
    - Fix creation of new processor metrics from legacy views.
