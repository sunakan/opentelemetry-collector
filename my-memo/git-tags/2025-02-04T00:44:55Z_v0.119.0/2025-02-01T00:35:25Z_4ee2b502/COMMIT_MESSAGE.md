commit 4ee2b5023cccba6a1ef6a436725e15f400878dc7
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Jan 31 16:35:25 2025 -0800

    Change Queue interface to return a callback instead of an index (#12230)
    
    This change will allow to simplify significantly the implementation for
    when queue is disabled and caller must block until the batch is
    constructed and processed downstream
    
    Updates
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    
    It is ok to have this as a breaking change since Queue is still
    experimental.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
