commit c0a735fc5477aba7e258c0b15a0e34d888d833d3
Author: Chester <chester.ong.ch@gmail.com>
Date:   Mon Jun 27 17:57:26 2022 +0800

    Fixing incorrect default TLS min and TLS max versions (#5480)
    
    * Fixing incorrect TLS min and TLS max Versions by default
    
    * Added test cases for TLS min and TLS max versions
    
    * Added entry to changelog
    
    * Added Invalid TLS test cases
    
    * TLS MinVersion and TLS MaxVersion defaults to be handled by crypto/tls
    
    * Removed description that can go out of sync
