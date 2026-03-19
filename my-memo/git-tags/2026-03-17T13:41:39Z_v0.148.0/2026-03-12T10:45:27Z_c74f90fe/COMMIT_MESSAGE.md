commit c74f90fe392274930d52ce685ed84ead7e91ffb0
Author: Andrzej Stencel <andrzej.stencel@elastic.co>
Date:   Thu Mar 12 11:45:27 2026 +0100

    fix: change metric units to singular (#14753)
    
    #### Description
    
    This is to align the metric units with [OTel
    specification](https://opentelemetry.io/docs/specs/semconv/general/metrics/#instrument-units):
    
    > All non-units that use curly braces to annotate a quantity need to
    match the grammatical number of the quantity it represent. For example
    if measuring the number of individual requests to a process the unit
    would be **{request}, not {requests}**.
    
    #### Link to tracking issue
    
    Part of
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/45270
    
    :question: Is there a way for this change to surface to users as a
    breaking change?
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
