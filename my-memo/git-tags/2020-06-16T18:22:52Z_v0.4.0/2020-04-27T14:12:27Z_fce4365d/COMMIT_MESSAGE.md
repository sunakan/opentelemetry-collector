commit fce4365dc5b28ca016b5a6df340cde35a9968abb
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Apr 27 07:12:27 2020 -0700

    Add translation of multiple Jaeger batches to pdata.Traces (#877)
    
    This additional translation function allows to translate multiple Jaeger proto batches to internal traces data model at once. Use case example: it will help to avoid breaking down multiple Jaeger batches in SAPM receiver before sending to downstream consumers https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/master/receiver/sapmreceiver/trace_receiver.go#L85
