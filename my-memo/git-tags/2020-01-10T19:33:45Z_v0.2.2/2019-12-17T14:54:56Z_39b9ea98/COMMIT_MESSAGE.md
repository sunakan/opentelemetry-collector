commit 39b9ea98ccc9b2e8cc547fa434ece6793233edf4
Author: Annanay Agarwal <annanay25@users.noreply.github.com>
Date:   Tue Dec 17 20:24:56 2019 +0530

    Add remote sampling support to Jaeger receiver (#448)
    
    This PR takes over from #432
    
    - Added SamplingManager to the `jReceiver` struct
    - Added new parameters to configure remote sampling endpoint (`remote_sampling:fetch_endpoint`)
    - Added tests and updated README
