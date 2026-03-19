commit 868a08967996fd7f8f286d41ae64e87c850c5557
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Jun 2 15:20:39 2022 -0700

    Move service.mapResolver to confmap.Resolver (#5444)
    
    The reason to do this is to allow alternative implementation of the service.ConfigProvider to re-use the resolver logic,
    also to create an independent "confmap.Conf" resolver for other services/binaries to use.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
