commit f64389d15f8b4dbddd807a16aabd84a57ce7826b
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Aug 11 06:57:13 2022 -0700

    [chore] change config tests to unmarshal only the config for that component (#5895)
    
    The main motivation for this is to allow components (including tests) to not depend on the "service" configuration and be reusable without the otelcol service.
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
