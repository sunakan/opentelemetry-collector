commit 0a643a7dfcde8d55877bce09752e9097f90a3610
Author: Paulo Janotti <paulo@omnition.io>
Date:   Thu Jun 27 10:17:29 2019 -0700

    Make perf testbed OS agnostic (#55) (#64)
    
    Leveraging GOOS to make the tests run seamless in multiple OSes. There will be separate work to establish different baselines for different platforms, this first change is just to make it runs without manual adaptations on multiple OSes.
