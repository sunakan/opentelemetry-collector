commit 6019ff32fa7c88ccbb4d40a132fb6fd937a1691d
Author: Dino Oliva <dinooliva@users.noreply.github.com>
Date:   Thu Oct 31 16:17:47 2019 -0700

    Add http latency metrics to Prometheus receiver (#410)
    
    * Add http observability metrics to Prometheus receiver
    
    * Add comment about http failure status and remove spurious log
    
    * Apply go fmt
    
    * Update log to be a warning rather than info
