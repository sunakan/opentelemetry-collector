commit aac0a30df0e880806f7bb36ac4fd9db1e38ddf0c
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Sat Feb 1 14:58:19 2025 -0800

    Cleanup initialization order for exporterhelper (#12239)
    
    Also, this PR fixes a concurrency data issue that only affects users
    that manually turned on `exporter.UsePullingBasedExporterQueueBatcher`
    featuregate.
    
    `exporter.UsePullingBasedExporterQueueBatcher` is still alpha in the
    last release.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
