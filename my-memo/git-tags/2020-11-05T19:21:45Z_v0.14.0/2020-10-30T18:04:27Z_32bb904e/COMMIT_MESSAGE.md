commit 32bb904e37e64ce44219289153973c6be9591587
Author: Chris Smith <chris.smith@zocdoc.com>
Date:   Fri Oct 30 14:04:27 2020 -0400

    zipkin receiver: allow receiver to parse string tags (#1893)
    
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/1888
    
    Previously the zipkin receiver parses string tags to other datatypes (int/bool/float), this adds the functionality back under a new configuration option `parse_string_tags` in the zipkin receiver.
    
    To unify the behavior with the zipkin v1 I also disabled the parsing by default and check the same configuration option.
