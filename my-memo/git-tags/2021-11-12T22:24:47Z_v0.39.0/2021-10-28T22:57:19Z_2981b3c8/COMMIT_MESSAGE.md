commit 2981b3c8e94294e49b31a083b052fa5bd9c8e329
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Oct 28 15:57:19 2021 -0700

    Change ParserProvider to use Retrieve and Retrieved as ConfigSource (#4270)
    
    * Change ParserProvider to use Retrieve and Retrieved as ConfigSource
    
    Return one instance per "Retrieve" call that is capable of "watching" the retrieved value. This is important because the collector needs to close the watcher after an update is received, and also the "merger" provider needs to close all the other watcher that did not trigger.
    
    When Start:
    * Collector retrieves config and starts watching;
    
    When watch update:
    * Collector closes all watchers (retrieved watching values).
    * Collector retrieves a new config and starts watching.
    
    When Shutdown:
    * Collector closes all watchers (retrieved watching values).
    * Collector "Shutdown" the provider.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Update config/provider.go
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
    
    * Update provider.go
    
    * Update provider.go
    
    * Update simple.go
    
    * Update simple.go
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
