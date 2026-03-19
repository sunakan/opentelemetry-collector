commit b0a3e433001a89a5e07d3e2200385405935bac53
Author: Kositsyn Pavel <vemmy124@gmail.com>
Date:   Wed Oct 14 23:27:24 2020 +0300

    Fix trace jaeger conversion to internal traces zero time bug (#1957)
    
    When spans are converted from internal trace to jaeger trace the conversion is zero timestamp -> time.Time{} which is a reserved date. When converted back, this date is interpreted as a usual one, so ProtoBatchesToInternalTraces(InternalTracesToJaegerProto(traces)) != traces. So I added a check on this one.
