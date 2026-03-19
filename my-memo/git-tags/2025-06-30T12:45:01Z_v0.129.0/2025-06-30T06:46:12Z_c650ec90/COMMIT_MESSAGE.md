commit c650ec90c814c1875601823f1d98b408aecbcfdd
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Sun Jun 29 23:46:12 2025 -0700

    [chore] [pdata] Use internal.CopyOrigSlice for pcommon.Slice (#13292)
    
    This was missed in
    https://github.com/open-telemetry/opentelemetry-collector/pull/13267
