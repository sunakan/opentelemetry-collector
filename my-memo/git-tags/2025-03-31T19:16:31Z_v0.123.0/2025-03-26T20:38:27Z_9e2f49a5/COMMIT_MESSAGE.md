commit 9e2f49a544bd7b2f0fa66a4a06683930ed94f815
Author: Cijo Thomas <cijo.thomas@gmail.com>
Date:   Wed Mar 26 13:38:27 2025 -0700

    [chore]: Add benchmark.txt to gitignore (#12741)
    
    Running `make gobenchmark` locally creates individual benchmarks files.
    This PR adds them to git-ignore list. The combined benchmarks.txt was
    already ignored.
