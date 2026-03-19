commit 859a4b40d93cddd41a9e6b7b59a4dafc5e80b9c1
Author: JustWPH <WPH95@users.noreply.github.com>
Date:   Tue Mar 30 01:24:15 2021 +0800

    testbed: Support UDP in addition to TCP for agent health check (#2633)
    
    Testbed hardcodes "tcp" in agent_start/health_check. but I need add testbed add a syslog_input with "udp" testcase.
    
    GetEndpoint now returns type "net.Addr" instead of "string" to support udp endpoint.
