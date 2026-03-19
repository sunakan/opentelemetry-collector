commit 1b13f9007c9cef72fe5773e34ab2bab1281d3de8
Author: Pavol Loffay <p.loffay@gmail.com>
Date:   Tue Feb 18 18:29:38 2020 +0100

    Expose service command (#555)
    
    This patch exposes service's cobra.Command. This is useful when service is embedded in other application which is adding other configuration properties.
