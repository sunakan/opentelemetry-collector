commit 9c3481b0a3a2fb6125496f3de31eb2a82e370e7e
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Jun 5 16:42:26 2024 -0700

    [exporterhelper] Fix potential deadlock in the batch sender (#10315)
    
    Concurrent handling of the flush timeouts can run into a deadlock when a
    batch is simultaneously sent by reaching the minimum size and flush
    timeout. The deadlock can happen on the following lines:
    -
    https://github.com/open-telemetry/opentelemetry-collector/blob/115bc8e28e009ca93565dc4deb4cf6608fa63622/exporter/exporterhelper/batch_sender.go#L131
    -
    https://github.com/open-telemetry/opentelemetry-collector/blob/115bc8e28e009ca93565dc4deb4cf6608fa63622/exporter/exporterhelper/batch_sender.go#L87
    
    Co-authored-by: Carson Ip <carsonip@users.noreply.github.com>
