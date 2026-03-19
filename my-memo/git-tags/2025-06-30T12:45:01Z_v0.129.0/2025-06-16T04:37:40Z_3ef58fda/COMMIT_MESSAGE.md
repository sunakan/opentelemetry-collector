commit 3ef58fda95de1fa1d27f1d43c9ef92193bac0b2d
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Sun Jun 15 21:37:40 2025 -0700

    [exporterhelper] Preserve request span context in the persistent queue (#13188)
    
    Alternative to
    https://github.com/open-telemetry/opentelemetry-collector/pull/13176
    that doesn't involve custom encoder but exposes new public module
    `pdata/xpdata/request`
    
    The actual change set is pretty small. Most of the code is generated
    protobuf
