commit bf818a241e2fb1d7595eb5a097c1990f2dd735dd
Author: James Bebbington <jbebbington@google.com>
Date:   Wed Nov 11 01:33:19 2020 +1100

    Use correct TCP state labels on Unix systems (#2087)
    
    For the tcp_connections metric, we want to always return a data point for each TCP state label. Unix uses slightly different TCP state labels than Windows:
    
    - Linux: [gopsutil](https://github.com/shirou/gopsutil/blob/c4663018cc3b6dfb0ae893bf2ca5f861fe3de3c0/net/net_linux.go#L309) / [Linux src](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/net/tcp_states.h?id=HEAD) (this seems to match other Unix systems as well)
    - Windows: [gopsutil](https://github.com/shirou/gopsutil/blob/c4663018cc3b6dfb0ae893bf2ca5f861fe3de3c0/net/net_windows.go#L563) / [MS docs](https://docs.microsoft.com/en-us/windows/win32/api/tcpmib/ns-tcpmib-mib_tcprow2)
    
    This PR updates the code to set the tcp state labels based on OS. This also fixes a test that would fail intermittently on Linux if any connections were in state `CLOSE` or `SYN_RECV` when the test ran, since the label value differs slightly from the Windows labels that were previously always used.
    
    I considered also making the test less restrictive (i.e. don't fail if unexpected state values are returned, and thus additional data points are created), but the test failure was very useful for detecting this bug so I have left as is for now.
    
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/2033
