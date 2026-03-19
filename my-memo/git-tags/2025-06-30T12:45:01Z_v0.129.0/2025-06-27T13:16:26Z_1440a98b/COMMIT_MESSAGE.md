commit 1440a98b789d0d490b9ec0432e5895276ce5e0fa
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Fri Jun 27 06:16:26 2025 -0700

    [pdata] Fix copying of optional fields when the source is unset (#13268)
    
    If destination has an optional field set to some value but source has it
    unset, we need to unset the field on the destination instead of keeping
    the old value.
    
    Found this bug while working on
    https://github.com/open-telemetry/opentelemetry-collector/pull/13267
