commit 35cf41e35418510cc8c8da68fec1c636c9296278
Author: Naseem <naseem@transit.app>
Date:   Mon Mar 8 12:41:52 2021 -0500

    [prometheusremotewrite] fix: counter name check  (#2613)
    
    * [prometheusremotewrite] fix: counter name check
    
    fixes  #2608
    
    Ensure that the metric name is greater than the length of the
    counter suffix ("_total") before checking if it contains the counter
    suffix to prevent crashes for short (smaller or eq to the length of the
    suffix) metric names.
    
    The edge case where the metric name is "_total" is not handled (considered
    not to have the suffix), but should not occur IRL.
    
    Also fix the spelling of "delimiter".
    
    Signed-off-by: naseemkullah <naseem@transit.app>
    
    * use strings.HasSuffix()
    
    Signed-off-by: naseemkullah <naseem@transit.app>
    
    * add already suffixed counter test
    
    Signed-off-by: naseemkullah <naseem@transit.app>
