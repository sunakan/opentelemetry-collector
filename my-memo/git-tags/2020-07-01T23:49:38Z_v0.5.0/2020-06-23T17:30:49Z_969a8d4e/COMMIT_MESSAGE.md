commit 969a8d4e9aceb9808f06d61df318956d28855ccc
Author: Chris Smith <chris.smith@zocdoc.com>
Date:   Tue Jun 23 13:30:49 2020 -0400

    Unify zipkin v1 and v2 annotation/tag parsing logic (#1002)
    
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/975
    
    Please look at the individual commits, most of this is just moving code around.
    
    Moves zipkin v2 trace conversion code into translator/trace/zipkin, previously it was in the receiver
    Use the same tag parsing logic for both zipkin v1 and v2
