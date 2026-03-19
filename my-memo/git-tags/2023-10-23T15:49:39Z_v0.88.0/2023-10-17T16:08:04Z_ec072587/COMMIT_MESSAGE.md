commit ec0725874313fe9e9bb64e4e4869afd28fd08cd7
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Oct 17 09:08:04 2023 -0700

    [fanoutconsumer] [chore] Do not wrap one read-only consumer (#8689)
    
    A follow-up optimization after merging
    https://github.com/open-telemetry/opentelemetry-collector/pull/8634.
    
    There is no need to create a fanout consumer for only one read-only
    consumer. This introduces a behavior that closely resembles its previous
    state, before the introduction of the readonly/mutable states.
