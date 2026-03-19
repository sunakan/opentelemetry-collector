commit 29b576e7d340d36553c12fe5a201b0938b5df304
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Sat May 15 00:04:18 2021 +0200

    Fix some errcheck errors (#2881)
    
    * Check testbed errors
    
    * Check some more errors
    
    * Empty commit to retrigger CI
    
    * Address comments on hostmetricsreceiver
    
    * Rewrite some errchecking code
    
    * Inline ifs
    
    * Inline ifs and change log.Fatalf + Error() calls by log.Fatal
