commit 89115dd5ca239da121a41010d23f79f6f6f72235
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Mar 16 09:09:59 2022 -0700

    Rename pdata.AttributeValue to pdata.Value (#4978)
    
    `pdata.AttributeValue` is a wrapper over `opentelemetry.proto.common.v1.AnyValue` type. It's not exclusively used with Attributes field, `pdata.LogRecord.Body` also uses it which makes the name misleading. This change renames all API related to `pdata.AttributeValue` to `pdata.Value` keeping the old API as deprecated
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
