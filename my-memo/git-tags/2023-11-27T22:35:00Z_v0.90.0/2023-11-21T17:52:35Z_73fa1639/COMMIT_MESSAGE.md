commit 73fa163951aeee538bd42f561d3a96205ee251d0
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Nov 21 09:52:35 2023 -0800

    [chore] [exporterhelper] Update test validating failed re-enqueue (#8960)
    
    Update the test validating failed re-enqueue to ensure that the request
    is sent through the queue sender, not the retry sender. It'll unblock
    removing the dependency on the retry sender for the re-enqueue as done
    in https://github.com/open-telemetry/opentelemetry-collector/pull/8942
