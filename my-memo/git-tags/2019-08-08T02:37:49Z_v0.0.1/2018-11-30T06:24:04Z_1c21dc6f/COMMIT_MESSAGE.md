commit 1c21dc6fe35c6a0b04746a90a40032c5b6da5265
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Sun Nov 25 23:00:05 2018 -0800

    cmd/ocagent/config* --> internal/config
    
    Consolidated config related utilities into internal/config
    
    This change introduces the consolidated changes. A followup
    will be to also edit cmd/occollector for parity of use with
    the now consolidated/extracted functions.
    
    Updates #210
    Updates #211
