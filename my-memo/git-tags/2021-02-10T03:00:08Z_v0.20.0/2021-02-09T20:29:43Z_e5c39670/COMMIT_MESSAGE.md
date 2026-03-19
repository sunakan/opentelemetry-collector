commit e5c39670a0db1abe1f3afa8e9c8187a5336da14f
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Feb 9 15:29:43 2021 -0500

    Show correct CPU usage when the process is terminated early (#2445)
    
    When the process is terminated its CPU time calculation could be incorrect since
    gopsutil sometimes returns CPU times that are lower than previously returned times.
    This was resulting in negative CPU time delta, which was then converted to uint32
    percent resulting in overflowing of the negative number into large positive number
    and very large incorrect CPU percentages shown.
    
    This changes fixes the problem by ensuring the calculated CPU time delta is never
    negative.
