commit fd2fa0dbe6eeccf02ee5f2f92ed4f41776502324
Author: Jaana Dogan <jbd@amazon.com>
Date:   Mon Jan 4 09:36:06 2021 -0800

    Flush out to the profile file before graceful shutdown (#2320)
    
    Ignore the Close error, trying to flush is the best we can do but is not worth to halt the shutdown if Close fails.
