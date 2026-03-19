commit 60b03d0d2d503351501291b30836d2126487a741
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Jan 8 08:16:05 2020 -0800

    Add "sampling.priority" support to probabilistic sampler (#469)
    
    * Add "sampling.priority" support to probabilistic sampler
    
    * Updating per PR comments
    
    Follow up to PR review comments
    
    * Add local func to avoid small code duplication
    
    * Fix gofmt per latest lint
    
    This only failed after rebase and `make install-tools`
    
    * Improve comments: clarify "sampled" and sampling.priority overrides hashing trace id.
    
    * PR feedback
    
    * remove check for "" value for string attribute
    * remove local function, duplication seems reasonable
    * improve comment about hash_seed usage
