commit 0bb3c8c5afe910940acb37470d9b19bf3d37651e
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Jan 13 09:12:07 2022 -0800

    Move service.ConfigMapConverterFunc to config.MapConverterFunc (#4673)
    
    The drop of the Config prefix from the func name was forced by go lint, which does not like to repeat the package name as the prefix for types.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
