commit fe2c989e4a24f624b42bad1a57bb523ba9a085ca
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Dec 22 10:21:20 2023 -0800

    [chore] [exporterhelper] Items based queue sizing with bounded channel (#9164)
    
    Introduce an option to limit the queue size by the number of items
    instead of number of requests. This is preliminary step for having the
    exporter helper v2 with a batcher sender placed after the queue sender.
    Otherwise, it'll be hard for the users to estimate the queue size based
    on the number of requests without batch processor in front of it.
    
    This change doesn't effect the existing functionality and the items
    based queue limiting cannot be utilized yet.
    
    Updates
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    
    Alternative to
    https://github.com/open-telemetry/opentelemetry-collector/pull/9147
