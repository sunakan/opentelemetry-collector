commit aab5f2c85d1a71644a038a79bbfb05db3030953f
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Nov 12 10:45:07 2020 -0500

    Fix "process/cpu_seconds" metrics (#2113)
    
    It was incorrectly declared as a unitless int64 metric. It needs to be a float64, and units are seconds.
