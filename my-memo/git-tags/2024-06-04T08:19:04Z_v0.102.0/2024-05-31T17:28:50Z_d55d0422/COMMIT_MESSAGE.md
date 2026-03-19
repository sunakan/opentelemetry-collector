commit d55d04226e578a2ae1fb2fae6a44fb9f214bcc07
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Fri May 31 10:28:50 2024 -0700

    [chore] remove TODO from confmap code (#10278)
    
    Remove a TODO comment on confmap/provider.go related to ChangeEvent.
    This struct is used extensively in providers that rely on changes such
    as:
    
    https://github.com/signalfx/splunk-otel-collector/blob/main/internal/configsource/etcd2configsource/source.go#L84
