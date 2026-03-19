commit 7f8f3211a5859852f5306eca4f483f8e285dd32e
Author: alrex <aboten@lightstep.com>
Date:   Fri Aug 13 01:21:45 2021 -0700

    move AttributeValueToString and AttributeMapToMap to pdata (#3820)
    
    Moving AttributeValueToString and AttributeMapToMap from `tracetranslator` to `pdata` for common use across signals. The original functions were left as wrappers to their `pdata` counterparts and marked as deprecated.
    
    **Link to tracking Issue:** First part of https://github.com/open-telemetry/opentelemetry-collector/issues/3815
    
    **Testing:** Moved existing tests to common_test
