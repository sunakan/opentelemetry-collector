commit d05ec08b176669d8f33ee44b1430ac186eaa4f16
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Thu Jun 27 06:41:55 2019 +0530

    Fixed ballast test cases by using  cross-platform lib (#61)
    
    * Fixed ballast test cases by using  cross-platform lib
    
    The ballast test case unreliable across platforms so had to remove it.
    It'll be replaced with an external test case as leveraging the
    performance testbed.
    
    The latest version was working on Linux and macOS laptops but had a hard
    time on Travis CI. It seems the only reliable way to test ballast is to
    spin up an external collector process and monitor it's memory usage.
    This will be implemented as part one of the perf testbed cases.
