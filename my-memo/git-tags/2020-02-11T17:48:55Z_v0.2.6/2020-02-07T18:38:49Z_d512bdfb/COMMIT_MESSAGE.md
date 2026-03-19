commit d512bdfbfcb351a667a5de75b6db0212e4848bf8
Author: Paulo Janotti <paulo@omnition.io>
Date:   Fri Feb 7 10:38:49 2020 -0800

    Fix Collector Metrics Prefix (#530)
    
    * Fix Collector Metrics Prefix
    
    * Remove typo
    
    * Rollback metric and label renaming
    
    Changing those will be a breaking change for some. Limiting the scope of this change to only fixing the prefix, metrics rename/reorg will come in later.
