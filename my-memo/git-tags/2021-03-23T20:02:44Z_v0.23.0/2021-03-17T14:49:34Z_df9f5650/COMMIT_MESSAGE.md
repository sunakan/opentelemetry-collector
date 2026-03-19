commit df9f5650412ab905c72070c42271e04e7a8a365a
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Mar 17 07:49:34 2021 -0700

    Use otlp request in wrapper, hide members in the wrapper (#2692)
    
    Tested in contrib and was able to access InternalWrapper.Orig,
    with this change this is no longer possible.
    
    Also removes one extra allocation for the request object when
    using otlp receiver/exporter since we keep the initial pointer around.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
