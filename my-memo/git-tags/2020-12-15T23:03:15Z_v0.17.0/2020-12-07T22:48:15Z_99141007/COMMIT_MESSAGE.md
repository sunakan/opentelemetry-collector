commit 991410074c50eb96299e2e8c3cd00b97579524ef
Author: Krzesimir Nowak <qdlacz@gmail.com>
Date:   Mon Dec 7 23:48:15 2020 +0100

    Stop pusher after exporter in sample app (#2270)
    
    Stopping exporter before stopping pusher causes the pusher to flush
    the bufferred metrics to a stopped exporter, which basically means
    sending metrics to /dev/null.
