commit 0d1e298e7b3b30eba02816b54a4c8f4e5f7c8d0e
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Jan 18 10:07:48 2022 -0800

    Remove deprecate flags --metrics-level and --metrics-addr (#4695)
    
    * Usages of `--metrics-level={VALUE}` can be replaced by `--set=service.telemetry.metrics.level={VALUE}`;
    * Usages of `--metrics-addr={VALUE}` can be replaced by `--set=service.telemetry.metrics.address={VALUE}`;
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
