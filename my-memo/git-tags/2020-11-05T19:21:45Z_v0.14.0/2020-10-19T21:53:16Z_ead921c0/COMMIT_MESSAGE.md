commit ead921c0241c56ab611aa252d8f98779aeddabe8
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Oct 19 14:53:16 2020 -0700

    Deprecate NopExporter, add NopConsumer (#1972)
    
    * Deprecate NopExporter, add NopConsumer
    
    In few situations people complained about not having a nop consumer,
    because of confusion that it was implemented as Exporter, even if only used as Consumer.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Rename to TracesNop
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
