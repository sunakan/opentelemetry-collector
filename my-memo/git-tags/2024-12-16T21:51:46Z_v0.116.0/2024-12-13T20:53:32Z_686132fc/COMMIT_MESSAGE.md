commit 686132fc278656cabd948c4dd80424abf029cb53
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Fri Dec 13 15:53:32 2024 -0500

    [chore] fix xconsumer mod versions (#11884)
    
    #### Description
    
    `make update-otel` failed in contrib due to the new packages added in
    https://github.com/open-telemetry/opentelemetry-collector/pull/11779.
    Pin a commit version for them in go mod to see if it unblocks contrib
