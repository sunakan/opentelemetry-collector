commit 2f703dcfe7c10d17630c6edbc1b77abbd206434a
Author: Alvin Lin <alvinlin123@gmail.com>
Date:   Tue Sep 29 08:04:32 2020 -0700

    Fix issue where Prometheus SD config cannot be parsed (#1877)
    
    * Fix issue where Prometheus service discovery configuration cannot be parsed after Prometheus dependency upgrade
    
    * Revert accidtnal change
    
    * Ran go fmt
    
    * Fix linting error
    
    * Fix impi errors
