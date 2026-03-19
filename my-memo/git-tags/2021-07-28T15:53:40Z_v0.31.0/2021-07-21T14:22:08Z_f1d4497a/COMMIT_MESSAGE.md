commit f1d4497af1d843fb5bc10aa4910bac422099d753
Author: Alan West <3676547+alanwest@users.noreply.github.com>
Date:   Wed Jul 21 07:22:08 2021 -0700

    Allow http/https scheme in otlpexporter endpoint configuration (#3575)
    
    otlpexporter endpoint configuration allows for an `http` or `https` scheme. The scheme is stripped off when instantiating the gRPC channel. A scheme of `https` indicates a secure channel. This aligns the collector with this hopefully soon-to-be-merged specification PR https://github.com/open-telemetry/opentelemetry-specification/pull/1729
    
    **Link to tracking Issue:** #2539
    
    **Documentation:** Updated readme
