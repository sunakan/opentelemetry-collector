commit 4d60560bdbf913ba01bc5d65a579da4ab85bd514
Author: Jaana Dogan <jbd@amazon.com>
Date:   Thu Dec 10 18:26:43 2020 -0800

    Rename SignalTestComplete to Shutdown (#2277)
    
    SignalTestComplete shouldn't be in the public API and Application should provide a Shutdown method instead. This change is fixing the public API, behavior of Shutdown will be fixed in the future.
    
    Fixes #2260.
