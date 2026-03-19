commit b1e075f507d1be98d24c3872d5bf0d6c49fb703d
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Apr 12 15:11:31 2024 -0700

    [cmd/mdatagen] [chore] Small fixes for new resource attributes filter (#9950)
    
    - Make sure we always pass a string to the filter.Match even if the
    attribute value has a different type. Otherwise, it panics.
    - Make sure we show the if_configured warning if the user sets
    include/exclude without enabled.
    - Simplify generated tests
    
    Follow up to
    https://github.com/open-telemetry/opentelemetry-collector/pull/9660
