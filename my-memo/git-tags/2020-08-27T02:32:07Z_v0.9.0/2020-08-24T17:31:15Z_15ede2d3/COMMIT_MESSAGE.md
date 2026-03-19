commit 15ede2d3f98ab87a3c262440d3659698fc488f78
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Aug 24 10:31:15 2020 -0700

    Do not duplicate filesystem metrics for devices with many mount points. (#1617)
    
    This commit fixes a bug that produces duplicate "filesystem" metric data points for linux devices that have more than one data point. For example:
    ```
    {"device":"/dev/vda1","mountpoint":"/etc/resolv.conf","fstype":"ext4","opts":"rw,relatime"}
    {"device":"/dev/vda1","mountpoint":"/etc/hostname","fstype":"ext4","opts":"rw,relatime"}
    {"device":"/dev/vda1","mountpoint":"/etc/hosts","fstype":"ext4","opts":"rw,relatime"}
    ```
