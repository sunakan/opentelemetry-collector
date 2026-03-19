commit aaeb0ce3a776ffc857c6fba84045414407071466
Author: Kevin Earls <kearls@redhat.com>
Date:   Mon Dec 7 17:37:20 2020 +0000

    Add retry to getAvailablePort to avoid spordic CI failure on windows (#2238)
    
    Signed-off-by: Kevin Earls <kearls@redhat.com>
    
    **Description:** Add a retry mechanism when finding ports for tests on windows, as net.Listen will occasionally return a port that is actually not available.   Details are available here https://github.com/docker/for-win/issues/3171, but to summarize Hyper-V will reserve ranges of ports which do not show up under the "netstat -ano" command but can only be found by "netsh interface ipv4 show excludedportrange protocol=tcp"
    
    This PR updates the testutil/GetAvailablePort function so when run on windows it will get the excludedportranges from the netsh command and retry if GetAvailableLocalAddress returns a port within those ranges
    
    **Link to tracking Issue:** #2111 NOTE: there are several failures referred to in that issue which were not caused by this.  This PR only fixes the jaeger_agent_test failures.
    
    **Testing:** As this is an intermittent error is it difficult to confirm.  However I did run some standalone tests where I added ranges to the list of excluded ports and from that was able to confirm the retry mechanism worked.
