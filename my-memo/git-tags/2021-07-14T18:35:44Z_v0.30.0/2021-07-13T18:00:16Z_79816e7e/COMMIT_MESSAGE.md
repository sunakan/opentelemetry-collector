commit 79816e7ed788aa9fdc8da9d9002275376a53366f
Author: Anthony Mirabella <a9@aneurysm9.com>
Date:   Tue Jul 13 14:00:16 2021 -0400

    receiver/prometheus: add `_total` to list of trimmable metric name suffixes (#3603)
    
    **Description:** attempts to ensure that the prometheus receiver correctly ingests counter metrics, regardless whether the producing system includes a `_total` suffix on the counter metric name.
    
    **Fixes:** #3557
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
