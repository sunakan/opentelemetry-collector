commit 55902b6828857ef98ac219f86274437ac2a66e53
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Tue Aug 15 13:50:33 2023 -0700

    [service/proctelemetry] Offer to override the HOST_PROC environment variable with a programmatic value (#7998)
    
    Reprising
    https://github.com/open-telemetry/opentelemetry-collector/pull/7434
    
    **Description:**
    
    While debugging the below error in k8s env
    ````
    Error: failed to register process metrics: process does not exist
    2023/03/23 03:44:47 main.go:115: application run finished with error: failed to register process metrics: process does not exist
    ````
    I have noticed that the metric server is calling GOPSUTIL while the
    HOST_PROC variable is set , this causes gopsutil `PidExistsWithContext `
    to retrieve the process from the host instead from the container
    
    ````
    func PidExistsWithContext(ctx context.Context, pid int32) (bool, error) {
            if pid <= 0 {
                    return false, fmt.Errorf("invalid pid %v", pid)
            }
            proc, err := os.FindProcess(int(pid))
            if err != nil {
                    return false, err
            }
    
            if isMount(common.HostProc()) { // if /<HOST_PROC>/proc exists and is mounted, check if /<HOST_PROC>/proc/<PID> folder exists
                    _, err := os.Stat(common.HostProc(strconv.Itoa(int(pid))))
                    if os.IsNotExist(err) {
                            return false, nil
                    }
                    return err == nil, err
            }
    ````
    This PR unsets and resets the host_proc variable and introduces an
    option to allow the use of host_proc if for whatever reason they need to
    
    **Link to tracking Issue:**
    Fixes #7435
    
    **Testing:**
    unit tests
    
    ---------
    
    Signed-off-by: Dani Louca <dlouca@splunk.com>
    Co-authored-by: Dani Louca <dlouca@splunk.com>
    Co-authored-by: Alex Boten <aboten@lightstep.com>
