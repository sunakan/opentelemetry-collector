commit 2de54643695ac035f4542daa9514d987213f0ce2
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Thu Apr 30 11:08:57 2020 -0400

    Allow internal metrics bind address to be configurable and change to localhost:8888 (#858)
    
    * Allow internal metrics bind address to be configurable and change to localhost:8888
    
    This allows the internal metrics to be served on an address other than 0.0.0.0.
    The new command line flag is --metrics-addr. It changes the default listen
    address to be localhost so that exposing it on the network is opt-in.
    
    * listen on localhost only for dev build
