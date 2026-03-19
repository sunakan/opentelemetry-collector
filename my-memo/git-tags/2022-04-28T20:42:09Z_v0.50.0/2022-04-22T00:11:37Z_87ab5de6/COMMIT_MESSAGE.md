commit 87ab5de64ce496aeb0ea19e70079cc917219a61d
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Apr 21 17:11:37 2022 -0700

    Fix nil pointer exception in service.NewConfigProvider (#5245)
    
    Deprecated `ConfigProviderSettings.Unmarshaler` is still being used in `service.NewConfigProvider` causing nil pointer exception it's not provided.
