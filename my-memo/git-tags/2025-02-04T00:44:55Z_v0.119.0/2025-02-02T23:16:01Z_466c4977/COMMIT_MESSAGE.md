commit 466c4977baecb6790fb91c3b01f5221813768e5a
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Sun Feb 2 15:16:01 2025 -0800

    Revert "[exporter][queuebatcher] set feature gate UsePullingBasedExporterQueueBatcher to beta" (#12246)
    
    Reverts open-telemetry/opentelemetry-collector#12122
    
    During the revamp of the pull batching work, couple bugs were found:
    1.
    https://github.com/open-telemetry/opentelemetry-collector/issues/12244
    2.
    https://github.com/open-telemetry/opentelemetry-collector/issues/12247
