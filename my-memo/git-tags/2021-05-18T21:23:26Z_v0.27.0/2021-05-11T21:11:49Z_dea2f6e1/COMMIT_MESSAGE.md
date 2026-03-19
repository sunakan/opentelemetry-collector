commit dea2f6e19f41f5e79235822931867262f94922f6
Author: Anthony Mirabella <a9@aneurysm9.com>
Date:   Tue May 11 17:11:49 2021 -0400

    Enable generation and comparison of public API snapshots (#3081)
    
    * Add `apidiff` to internal/tools
    
    * Add Makefile target for building apidiff snapshots
    
    * Add Makefile target for comparing API snapshots
    
    * Update apidiff comparison to only output when changes are detected
    
    * Fix missing newline at end of Makefile
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Tidy mods in internal/tools
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
