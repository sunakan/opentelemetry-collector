commit fa7a9d5abb687b7c5eba5fc039810c33c3b55403
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri May 7 12:19:34 2021 -0700

    Validate that batch config max size is greater than send size (#3126)
    
    * Validate that batch config max size is greater than send size
    
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/3119
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Update processor/batchprocessor/config.go
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
    
    * Update config.go
    
    * Clarify readme for batch processor
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
