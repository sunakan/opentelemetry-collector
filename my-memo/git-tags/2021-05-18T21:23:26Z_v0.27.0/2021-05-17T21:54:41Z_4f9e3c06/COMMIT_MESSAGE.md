commit 4f9e3c066375bfbc4377b360ef462a6050a210f6
Author: Anthony Mirabella <a9@aneurysm9.com>
Date:   Mon May 17 17:54:41 2021 -0400

    exporters/prometheusremotewrite: Do not append '_total' to counter metric names (#2993)
    
    * exporters/prometheusremotewrite: Do not append '_total' to counter metric names.
    
    This appears to have been enforcing convention but isn't actually required.
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Address PR feedback
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Update CHANGELOG.md to reflect removal of _total suffix enforcement in PRW exporter
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
