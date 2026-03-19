commit 9d5a51ef7d11e4a4afba8ab8c76786d9a20335a6
Author: Eddy Lin <elindy26@gmail.com>
Date:   Wed Jun 16 08:58:54 2021 -0400

    Rename service.Application to service.Collector (#3268)
    
    * Create snyk-container-analysis.yml
    
    * Create snyk-container-analysis.yml
    
    * Renamed occurrences of Application to Collector
    
    - Changed references in function/method docs from 'application' to 'collector server'
    - Changed instance variable names from (app *Application) to (col *Collector)
    
    * Rename more instances of Application to Collector
    
    - renamed files in service/application* to service/collector*
    - replaced occurrences of app to col
    
    * Renamed references of service.Application to collector (or collector server)
    
    * Added change log entry stub
    
    * Added number of PR
    
    * Fixed merge conflicts
    
    * Update CHANGELOG.md
    
    * Renamed ColSettings to CollectorSettings
    
    * Fixed naming error
    
    * Delete snyk-container-analysis.yml
    
    * Moved change log entry unreleased section
    
    From v0.28.0-beta to unreleased (breaking change)
    
    * Deleted extra new line in change log
    
    * Renamed occurrences of Application to Collector
    
    - Changed references in function/method docs from 'application' to 'collector server'
    - Changed instance variable names from (app *Application) to (col *Collector)
    
    * Rename more instances of Application to Collector
    
    - renamed files in service/application* to service/collector*
    - replaced occurrences of app to col
    
    * Renamed references of service.Application to collector (or collector server)
    
    * Added number of PR
    
    * Fixed merge conflicts
    
    * Renamed ColSettings to CollectorSettings
    
    * Fixed naming error
    
    * Moved change log entry unreleased section
    
    From v0.28.0-beta to unreleased (breaking change)
    
    * Removed misplaced newline
    
    Co-authored-by: Karen Xu <karenyrxu@gmail.com>
    Co-authored-by: Iris Song <chengcs@amazon.com>
