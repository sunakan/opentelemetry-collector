commit 9f9e521e68c3c07cd0e88730d3c07a73223cf114
Author: Anthony Mirabella <a9@aneurysm9.com>
Date:   Fri May 14 17:37:46 2021 -0400

    receiver/prometheus: Fix start timestamp adjustment logic (#3047)
    
    * receiver/prometheus: Do not drop metrics used to establish start time
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * receiver/prometheus: update documentation regarding metric adjustment
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * exporter/prometheus: fix e2e test to account for proper recevier functioning
    
    * Addres PR feedback on docs and naming
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * rename adjustPoint->isReset
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
