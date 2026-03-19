commit 7c5ecef11dff4ce5501c9683b277a25a61ea0f1a
Author: Antonio Jimenez <123171955+antonjim-te@users.noreply.github.com>
Date:   Fri Sep 29 18:36:09 2023 +0200

    [telemetry] Enable sampling logging by default and apply it to all components (#8134)
    
    The sampled logger configuration can be disabled easily by setting the `service::telemetry::logs::sampling::enabled` to `false`.
