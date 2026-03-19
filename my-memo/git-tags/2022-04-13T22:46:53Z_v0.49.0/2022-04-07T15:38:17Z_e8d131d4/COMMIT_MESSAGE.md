commit e8d131d47f0e279045f787a9803db4a7bd95f59b
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Apr 7 08:38:17 2022 -0700

    Make InstrumentationLibrary<signal>ToScope functions unexported (#5164)
    
    The functions were added in the the latest version. They are intended for the internal use only and shouldn't be exported.
