commit a7dc83804ed305afeb6aa20aebb0be8ee5c916ec
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Tue Dec 19 10:27:30 2023 -0800

    [chore] remove time.Sleep from benchmarks (#8859)
    
    Refactor benchmarks to run as tests as well, remove use of time.Sleep in
    benchmarks.
