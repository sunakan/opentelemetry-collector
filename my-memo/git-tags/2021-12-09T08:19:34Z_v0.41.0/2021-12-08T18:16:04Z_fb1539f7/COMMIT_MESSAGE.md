commit fb1539f7e57b782c2419115c602fff9a356040db
Author: Lyra Naeseth <lyra@naeseth.com>
Date:   Wed Dec 8 10:16:04 2021 -0800

    Support CORS Max-Age on OTLP/HTTP receiver (#4492)
    
    * Support CORS Max-Age on oltphttp receiver
    
    * Encapsulate CORS config in its own struct
    
    * Update changelog
    
    * Fixes to CORS docs
    
    * Use CORSSettings in TestHttpCors
    
    * Clarify behavior when cors.max_age is unset
    
    * Move changelog updates to the unreleased section
