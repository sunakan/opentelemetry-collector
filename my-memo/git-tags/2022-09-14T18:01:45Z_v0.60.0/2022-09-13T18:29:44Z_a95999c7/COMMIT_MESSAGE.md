commit a95999c71d64343d607a2ca62d1df5452304bdc1
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Sep 13 11:29:44 2022 -0700

    Replace immutable TraceState with a mutable struct (#6052)
    
    * Replace immutable TraceState with a mutable struct
    
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/6022
    
    Main motivation is that we may want to allow mutating (adding an entry to the state).
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    * Update CHANGELOG.md
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
