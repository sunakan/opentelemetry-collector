commit 1a6239287572eb9c5420b191f4038d66b77f88e3
Author: Dale Peakall <dpeakall+etsy@thoughtworks.com>
Date:   Mon Jan 27 20:18:19 2020 +0000

    Add support for OpenCensus receiver listening on Unix Domain Socket (#501) (#515)
    
    * Added support to opencensusreceiver for listening on a unix domain socket (#400)
    
    * Update testbed to include new parameter in opencensusreceiver
    
    * Removed unneeded omit_empty attribute.
