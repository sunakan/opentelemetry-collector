commit 5733742641b50f50dc868eba3938e9c1cb256484
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Dec 7 16:10:47 2021 -0800

    Add a warning message for usage legacy OTLP HTTP endpoint (#4519)
    
    Default OTLP HTTP endpoint 0.0.0.0:4318 enables legacy endpoint as well. It makes the migration painless, so we need to encourage users to update their configuration. This change adds a warning message in case if user has the legacy endpoint configured explicitly.
