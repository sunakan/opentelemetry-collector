commit 2363b528407133471a9d32468b1fe5286932fd1f
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Oct 24 18:07:12 2022 +0200

    [exporter/logging] Deprecate 'loglevel' in favor of 'verbosity' (#6334)
    
    * [exporter/logging] Deprecated 'loglevel' in favor of 'verbosity'
    
    * Fix tests
    
    * Remove check for mismatch between levels
    
    * Add newline at EOF
    
    * Use set instead of switch for checking level
    
    * More newlines
    
    * Move supportedLevels out of Validate method
