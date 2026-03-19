commit 8b67a09d745d9429a1d21f136d7f4283d56dd9be
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Wed Nov 18 15:24:04 2020 -0500

    hostmetricsreceiver doc updates and logging (#2038)
    
    CPU and disk metrics are not available in gopsutils on Mac when cgo is disabled
    (https://github.com/shirou/gopsutil/blob/master/cpu/cpu_darwin_nocgo.go)
    
    Errors were not logged which lead to confusion about why things weren't
    working. @james-bebbington was this intentional or unintentional? It does
    spam the logs a bit (every collection interval) but I don't think we can fully
    rely on users checking traces for errors.
