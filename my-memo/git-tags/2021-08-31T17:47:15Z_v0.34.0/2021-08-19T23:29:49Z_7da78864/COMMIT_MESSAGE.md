commit 7da788642166422e86833a2a5dffed96758836aa
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Aug 19 16:29:49 2021 -0700

    Change semantic conventions for status (code, msg) as per specifications (#3872)
    
    Deprecate the old values and replace with the new value defined by the specification.
    This may be a breaking change for backends that expect this value.
    
    See https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/trace/sdk_exporters/non-otlp.md
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
