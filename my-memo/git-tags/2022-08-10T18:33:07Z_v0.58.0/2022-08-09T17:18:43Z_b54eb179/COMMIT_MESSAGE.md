commit b54eb179201ee1a7e00b29e7e3472ad856714887
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Aug 9 10:18:43 2022 -0700

    confmap.Resolver: Remove support for the old way of expanding env vars (#5863)
    
    The new mechanism that allows embedding and expanding configs from all the Providers, does not doing it without explicitly specify the URI scheme.
    If support for backwards compatibility is needed, continue to use the `expandconverter`.
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
