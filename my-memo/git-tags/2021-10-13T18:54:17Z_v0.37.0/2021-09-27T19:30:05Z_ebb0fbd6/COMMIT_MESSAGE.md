commit ebb0fbd6f23e9ecc17ddc64edd54bb2a84ea9ce1
Author: Min Xia <xiami@amazon.com>
Date:   Mon Sep 27 12:30:05 2021 -0700

    Make TLSClient config to pointer type (#4104)
    
    Change TLSClient config to pointer type in `confighttp` and `configgrpc` config
    
    **Related Issue**
    https://github.com/open-telemetry/opentelemetry-collector/issues/4028
    https://github.com/open-telemetry/opentelemetry-collector/pull/4063#discussion_r711974463
